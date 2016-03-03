# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Resident.create!(:address => "Las Pircas 5180")
puts "Residente Las Pircas 5180 creado"

Resident.create!(:address => "El Prado 3333")
puts "Residente El Prado 3333 creado"

Resident.create!(:address => "El Prado 4321")
puts "Residente El Prado 4321 creado"


Tag.create!(:resident_id => "1", :tag_value => "DERFSSD5757")
puts "Tag DERFSSD5757 asociado a Residente de Las Pircas 5180 creado!!"

Tag.create!(:resident_id => "2", :tag_value => "GDGDDG53535")
puts "Tag GDGDDG53535 asociado a Residente de El Prado 3333 creado!!"


Visitor.create!(:patente => "ERTE43")
puts "Visita Ejemplo 1 creada"
Visitor.create!(:patente => "SDER32")
puts "Visita Ejemplo 2 creada"
Visitor.create!(:patente => "DE3245")
puts "Visita Ejemplo 3 creada"
Visitor.create!(:patente => "SD3211")
puts "Visita Ejemplo 4 creada"


Plate.create!(:tag_value => "GDGDDG53535")
puts "Entrada de Residente con tag GDGDDG53535 creado"

Plate.create!(:tag_value => "DERFSSD5757")
puts "Entrada de Residente con tag DERFSSD5757 creado"


