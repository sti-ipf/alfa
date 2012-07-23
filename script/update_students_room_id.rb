
rooms = [[3, 'Santa Fé - 01', 72],
[4, 'Jaqueira', 2],
[5, 'Jaqueira', 2],
[6, 'Presidente Kennedy', 92],
[7, 'Presidente Kennedy', 92],
[8, 'Presidente Kennedy', 92],
[9, 'Leonel', 88],
[10, 'São Paulo', 85],
[11, 'Santa Lúcia', 87],
[12, 'Galos', 89],
[23, 'Mineirinho', 66],
[24, 'Gromogol', 69],
[26, 'São Salvador - 01', 81],
[27, 'Praia de Marobá', 70],
[28, 'Cacimbinha', 64],
[29, 'São Salvador - 02', 82]
]

rooms.each do |rr|
  r = Room.find(rr.first)
  r.students.each do |s|
    s.update_attributes(:room_id => rr.last)
  end
end