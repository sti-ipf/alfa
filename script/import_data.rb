 FasterCSV.foreach("tmp/planilha.csv") do |row|
    visit_on = row[1]
    coordinator = row[2]
    name = row[4]
    place_desc = row[5]
    address = "#{row[6]} #{row[7]} #{row[8]} #{row[9]}"
    community_type = row[10]
    place = row[11]

    core = Core.create(:visit_on => visit_on, :name => name, :place => )
    Coordinator.create(:name => coordinator, :core => core)
  end