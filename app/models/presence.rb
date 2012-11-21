class Presence < ActiveRecord::Base
  belongs_to :lecture_day
  belongs_to :student
  belongs_to :room

  NO_CLASS = 0
  WITH_CLASS = 1
  ACTIVE = 2
  AWAY = 3
  EVADED = 4

  STUDENT_STATUS = [["Frequente", ACTIVE], ["Ausente", AWAY], ["Evadido", EVADED]]

  def self.create_presences(params = {})
    @lecture_days = LectureDay.all(:conditions => "room_id = #{params[:room_id]} AND month = #{params[:month]}")
    @lecture_days.each do |l|
      Presence.create(:lecture_day_id => l.id, :student_id => params[:student_id], 
        :room_id => params[:room_id], :month => params[:month])
    end
  end

  def self.generate_students_report(room_id, month)
      presences = find_by_sql(" SELECT p.presence as serie, s.name as name FROM presence_lists p, students s
                                WHERE p.room_id = #{room_id} 
                                AND p.month = #{month} 
                                AND p.student_id = s.id
      ");
      data = prepare_report_data(presences)
      data
  end
  
  def self.generate_rooms_report(core_id, month)
      presences = find_by_sql(" SELECT avg(p.presence) as serie, r.name as name FROM presence_lists p, rooms r 
                                WHERE p.month = #{month} 
                                AND p.room_id = r.id 
                                AND r.core_id = #{core_id}
                                GROUP BY (r.id)")
      data = prepare_report_data(presences)
      data
  end
  def self.generate_cores_report(month)
      presences = find_by_sql(" SELECT avg(p.presence) as serie, c.name as name FROM presence_lists p, rooms r, cores c 
                                WHERE p.month = #{month} 
                                AND p.room_id = r.id 
                                AND r.core_id = c.id
                                GROUP BY (c.id)")
      data = prepare_report_data(presences)
      data
  end
  private
  def self.prepare_report_data(presences)
    xAxis = Array.new
    series = Array.new
    presences.each do |presence|
      xAxis.push "'#{presence.name}'"
      series.push "#{presence.serie}"
    end

    data = Hash.new
    data[:xAxis] = xAxis.join(',')
    data[:series] = series.join(',')
    data
  end

end
