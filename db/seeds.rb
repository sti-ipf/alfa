# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
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
  :password_confirmation => 'ipf123', :admin => true)
City.create(:name => "Presidente Kennedy")
City.create(:name => "São Francisco de Itabapoana")