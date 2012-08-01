Coordinator.all.each do |c|
  city_id = nil
  c.cores.each do |cc|
    if !cc.city_id.blank?
      city_id = cc.city_id
    end
  end
  if city_id.blank?
    next if c.core_id.blank?
    city_id = Core.find(c.core_id).city_id
  end
  c.city_id = city_id
  c.save
end

Coordinator.all.each do |c|
  next if c.core_id.blank?
  core = Core.find(c.core_id)
  ActiveRecord::Base.connection.execute "INSERT INTO coordinators_cores (coordinator_id, core_id) VALUES (#{c.id}, #{core.id})"
end