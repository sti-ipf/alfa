# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
networks = [["Orkut", 1], ["Facebook", 2], ["Twitter", 3], ["Outras", 4]]
networks.each do |n|
  UseSocialNetWork.create(:description => n.first)
  KnowSocialNetWork.create(:description => n.first)
end

[["Lazer", 1], ["Estudo", 2], ["Trabalho", 3], ["Outros", 4]].each do |n|
  InternetUse.create(:description => n.first)
end

[["Escrever textos", 1], ["Ouvir música e/ou assistir vídeos", 2], ["Ler textos", 3], ["Acessar a Internet", 4], ["Fazer planilhas", 5], ["Jogar", 6],
    ["Realizar cursos", 7], ["Participar de redes sociais", 8]].each do |n|
      PcUse.create(:description => n.first)
end


DeskType.create(:desk_type => "Carteiras escolares")
DeskType.create(:desk_type => "Mesas redondas")
DeskType.create(:desk_type => "Mesas de plástico")
DeskType.create(:desk_type => "Tábua e cavalete")

SeatType.create(:seat_type => "Cadeiras")
SeatType.create(:seat_type => "Bancos de madeira")
SeatType.create(:seat_type => "Cadeiras escolares")
SeatType.create(:seat_type => "Cadeiras universitárias")
SeatType.create(:seat_type => "Outros")
SeatType.create(:seat_type => "Não tem mobiliário")

PartnerResource.create(:resource => "Infra-estrutura")
PartnerResource.create(:resource => "Mobiliário")
PartnerResource.create(:resource => "Recursos Humanos")

Displacement.create(:displacement => "A pé")
Displacement.create(:displacement => "De motocicleta")
Displacement.create(:displacement => "De barco")
Displacement.create(:displacement => "De bicicleta")
Displacement.create(:displacement => "Carro")
Displacement.create(:displacement => "Charrete")
Displacement.create(:displacement => "Em lombo de animal")
Displacement.create(:displacement => "Ônibus")
Displacement.create(:displacement => "Outro")

ProfessionalExp.create(:area => "Na agricultura")
ProfessionalExp.create(:area => "Na indústria")
ProfessionalExp.create(:area => "No comércio")
ProfessionalExp.create(:area => "Outros")
ProfessionalExp.create(:area => "Nenhuma anterior")

EducationExp.create(:education_type => "Pública")
EducationExp.create(:education_type => "Privada")
EducationExp.create(:education_type => "Estágio")


User.create(:username => 'admin', :name => 'Administrador', :password => 'ipf123',
  :password_confirmation => 'ipf123', :admin => true , :role => 1)
City.create(:name => "Presidente Kennedy")
City.create(:name => "São Francisco de Itabapoana - Fase 1")
City.create(:name => "São Francisco de Itabapoana - Fase 2")

if Rails.env == 'development'
  c = Core.create(:community => "Comunidade", :institution_name => "Instituição", :city_id => 1)
  r = Room.create(:name => "Turma 1", :core => c)
  Student.create(:name => 'João da Silva', :core => c, :room => r)
end