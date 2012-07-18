class LectureDay < ActiveRecord::Base
  belongs_to :room


  def lecture_on_to_date
    Time.at(self.lecture_on)
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

private

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
