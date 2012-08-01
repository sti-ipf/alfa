class LectureDay < ActiveRecord::Base
  belongs_to :room
  has_many :presences, :dependent => :destroy

  after_save :create_presences, :update_presences_status

  def lecture_on_to_date
    if !self.lecture_on.nil?
      Time.at(self.lecture_on)
    else
      nil
    end
  end

  def self.create_lectures(start_on, end_on, room_id, lecture_days)
    return false, "Por favor, preencha todos os campos obrigatórios corretamente" if invalid_date(start_on) || invalid_date(end_on) || room_id.blank? || not_lectures_days(lecture_days)
    return false, "A data de término deve ser maior que a da de início das aulas" if end_on_before_or_equals_start_on?(start_on, end_on)
    start_on = Date.strptime(start_on, '%d/%m/%Y')
    end_on = Date.strptime(end_on, '%d/%m/%Y')
    days_of_week = []
    lecture_days.each do |d|
      if !d["week_day"].blank?
        days_of_week << {:week_day => d["week_day"].to_i, :start_at => d["start_at"], :end_at => d["end_at"]} 
      end
    end
    days_of_week.each do |d|
      create_lectures_for_day_of_week(d[:week_day], start_on, end_on, room_id, d[:start_at], d[:end_at])
    end
    return true, ''
  end

  def period
    if self.start_at.blank? || self.end_at.blank?
      return ''
    else
      "#{self.start_at.try(:strftime, '%H:%M')} às #{self.end_at.try(:strftime, '%H:%M')}"
    end
  end

private

  def create_presences
    self.room.students.each do |s|
      p = Presence.first(:conditions => "lecture_day_id = #{self.id} AND student_id = #{s.id}")
      if p.nil?
        Presence.create(:lecture_day_id => self.id, :student_id => s.id, :room_id => self.room_id, :month => self.month)
      else
        p.update_attributes(:month => self.month)
      end
    end
  end

  def update_presences_status
    if self.cancelled_changed?
      if self.cancelled
         ActiveRecord::Base.connection.execute "UPDATE presences SET status = #{Presence::NO_CLASS} WHERE lecture_day_id = #{self.id}"
      else
        ActiveRecord::Base.connection.execute "UPDATE presences SET status = #{Presence::WITH_CLASS} WHERE lecture_day_id = #{self.id}"
      end
    end
  end

  def self.create_lectures_for_day_of_week(day_of_week, start_on, end_on, room_id, start_at, end_at)
    lecture_days = []
    date = start_on
    if date.wday == day_of_week
      while (date <= end_on)
        lecture_days << date
        date += 7.days
      end
    else
      while ((date).wday != day_of_week)
        date = date.next
      end
      while (date <= end_on)
        lecture_days << date
        date += 7.days
      end
    end
    lecture_days.each do |l|
      create(:lecture_on => l.to_time.to_i, :week_day => day_of_week, :day => l.day, :month => l.month, :year => l.year, :room_id => room_id, :start_at => start_at, :end_at => end_at)
    end
  end

  def self.not_lectures_days(lecture_days)
    has_days = true
    lecture_days.each do |d|
      has_days = false if !d["week_day"].blank?
    end
    has_days
  end

  def self.invalid_date(date)
    begin
      Date.strptime(date, '%d/%m/%Y')
    rescue
      return true
    end
    false
  end

  def self.end_on_before_or_equals_start_on?(first_date, second_date)
    Date.strptime(second_date, '%d/%m/%Y') <= Date.strptime(first_date, '%d/%m/%Y')
  end

end
