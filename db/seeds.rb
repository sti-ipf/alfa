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

