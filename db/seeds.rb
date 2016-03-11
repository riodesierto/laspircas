# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Resident.delete_all
Tag.delete_all
Visitor.delete_all
Plate.delete_all

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
puts 'CREATED ADMIN PASS: ' << user.password

Resident.create!(:address => "El Prado 4098")
puts "Residente El Prado 4098 creado"

Tag.create!(:resident_id => "1", :tag_value => "0000-0000-0000-0000-0006-64BA")
puts "Tag 664BA asociado a Residente de El Prado 4098 creado!!"

Tag.create!(:resident_id => "1", :tag_value => "0000-0000-0000-0000-0006-64BB")
puts "Tag 664BB asociado a Residente de El Prado 4098 creado!!"

Tag.create!(:resident_id => "1", :tag_value => "0000-0000-0000-0000-0006-64B9")
puts "Tag 664B9 asociado a Residente de El Prado 4098 creado!!"


Resident.create!(:address => "El Prado 4099")
puts "Residente El Prado 4099 creado"

Tag.create!(:resident_id => "2", :tag_value => "0000-0000-0000-0000-0006-600A")
puts "Tag 6600A asociado a Residente de El Prado 4099 creado!!"

Tag.create!(:resident_id => "2", :tag_value => "0000-0000-0000-0000-0006-600B")
puts "Tag 6600B asociado a Residente de El Prado 4099 creado!!"

Tag.create!(:resident_id => "2", :tag_value => "0000-0000-0000-0000-0006-600C")
puts "Tag 6600C asociado a Residente de El Prado 4099 creado!!"


Resident.create!(:address => "El Prado 4115")
puts "Residente El Prado 4115 creado"

Tag.create!(:resident_id => "3", :tag_value => "0000-0000-0000-0000-0006-583A")
puts "Tag 6583A asociado a Residente de El Prado 4115 creado!!"

Tag.create!(:resident_id => "3", :tag_value => "0000-0000-0000-0000-0006-583B")
puts "Tag 6583B asociado a Residente de El Prado 4115 creado!!"

Tag.create!(:resident_id => "3", :tag_value => "0000-0000-0000-0000-0006-583C")
puts "Tag 6583C asociado a Residente de El Prado 4115 creado!!"


Resident.create!(:address => "El Prado 4116")
puts "Residente El Prado 4116 creado"

Tag.create!(:resident_id => "4", :tag_value => "0000-0000-0000-0000-0006-506A")
puts "Tag 6506A asociado a Residente de El Prado 4116 creado!!"

Tag.create!(:resident_id => "4", :tag_value => "0000-0000-0000-0000-0006-506B")
puts "Tag 6506B asociado a Residente de El Prado 4116 creado!!"

Tag.create!(:resident_id => "4", :tag_value => "0000-0000-0000-0000-0006-506C")
puts "Tag 6506C asociado a Residente de El Prado 4116 creado!!"


Resident.create!(:address => "El Prado 4127")
puts "Residente El Prado 4127 creado"

Tag.create!(:resident_id => "5", :tag_value => "0000-0000-0000-0000-0006-6C25")
puts "Tag 66C25 asociado a Residente de El Prado 4127 creado!!"

Tag.create!(:resident_id => "5", :tag_value => "0000-0000-0000-0000-0006-6C26")
puts "Tag 66C26 asociado a Residente de El Prado 4127 creado!!"

Tag.create!(:resident_id => "5", :tag_value => "0000-0000-0000-0000-0006-6C27")
puts "Tag 66C27 asociado a Residente de El Prado 4127 creado!!"


Resident.create!(:address => "El Prado 4139")
puts "Residente El Prado 4139 creado"

Tag.create!(:resident_id => "6", :tag_value => "0000-0000-0000-0000-0006-732D")
puts "Tag 6732D asociado a Residente de El Prado 4139 creado!!"

Tag.create!(:resident_id => "6", :tag_value => "0000-0000-0000-0000-0006-732E")
puts "Tag 6732E asociado a Residente de El Prado 4139 creado!!"

Tag.create!(:resident_id => "6", :tag_value => "0000-0000-0000-0000-0006-732F")
puts "Tag 6732F asociado a Residente de El Prado 4139 creado!!"


Resident.create!(:address => "El Prado 4155")
puts "Residente El Prado 4155 creado"

Tag.create!(:resident_id => "7", :tag_value => "0000-0000-0000-0000-0006-77DD")
puts "Tag 677DD asociado a Residente de El Prado 4155 creado!!"

Tag.create!(:resident_id => "7", :tag_value => "0000-0000-0000-0000-0006-77DE")
puts "Tag 677DE asociado a Residente de El Prado 4155 creado!!"

Tag.create!(:resident_id => "7", :tag_value => "0000-0000-0000-0000-0006-77DF")
puts "Tag 677DF asociado a Residente de El Prado 4155 creado!!"


Resident.create!(:address => "El Prado 4167")
puts "Residente El Prado 4167 creado"

Tag.create!(:resident_id => "8", :tag_value => "0000-0000-0000-0000-0006-7EE5")
puts "Tag 67EE5 asociado a Residente de El Prado 4167 creado!!"

Tag.create!(:resident_id => "8", :tag_value => "0000-0000-0000-0000-0006-7EE6")
puts "Tag 67EE6 asociado a Residente de El Prado 4167 creado!!"

Tag.create!(:resident_id => "8", :tag_value => "0000-0000-0000-0000-0006-7EE7")
puts "Tag 67EE7 asociado a Residente de El Prado 4167 creado!!"


Resident.create!(:address => "El Prado 4168")
puts "Residente El Prado 4168 creado"

Tag.create!(:resident_id => "9", :tag_value => "0000-0000-0000-0000-0006-7A36")
puts "Tag 67A36 asociado a Residente de El Prado 4168 creado!!"

Tag.create!(:resident_id => "9", :tag_value => "0000-0000-0000-0000-0006-7A37")
puts "Tag 67A37 asociado a Residente de El Prado 4168 creado!!"

Tag.create!(:resident_id => "9", :tag_value => "0000-0000-0000-0000-0006-7A38")
puts "Tag 67A38 asociado a Residente de El Prado 4168 creado!!"


Resident.create!(:address => "El Prado 4179")
puts "Residente El Prado 4179 creado"

Tag.create!(:resident_id => "10", :tag_value => "0000-0000-0000-0000-0006-5AF5")
puts "Tag 65AF5 asociado a Residente de El Prado 4179 creado!!"

Tag.create!(:resident_id => "10", :tag_value => "0000-0000-0000-0000-0006-5AF6")
puts "Tag 65AF6 asociado a Residente de El Prado 4179 creado!!"

Tag.create!(:resident_id => "10", :tag_value => "0000-0000-0000-0000-0006-5AF6")
puts "Tag 65AF6 asociado a Residente de El Prado 4179 creado!!"


Resident.create!(:address => "El Prado 4180")
puts "Residente El Prado 4180 creado"

Tag.create!(:resident_id => "11", :tag_value => "0000-0000-0000-0000-0006-632A")
puts "Tag 6632A asociado a Residente de El Prado 4180 creado!!"

Tag.create!(:resident_id => "11", :tag_value => "0000-0000-0000-0000-0006-632B")
puts "Tag 6632B asociado a Residente de El Prado 4180 creado!!"

Tag.create!(:resident_id => "11", :tag_value => "0000-0000-0000-0000-0006-632C")
puts "Tag 6632C asociado a Residente de El Prado 4180 creado!!"


Resident.create!(:address => "El Prado 4186")
puts "Residente El Prado 4186 creado"

Tag.create!(:resident_id => "12", :tag_value => "0000-0000-0000-0000-0006-67DA")
puts "Tag 667DA asociado a Residente de El Prado 4186 creado!!"

Tag.create!(:resident_id => "12", :tag_value => "0000-0000-0000-0000-0006-67DB")
puts "Tag 667DB asociado a Residente de El Prado 4186 creado!!"

Tag.create!(:resident_id => "12", :tag_value => "0000-0000-0000-0000-0006-67DC")
puts "Tag 667DC asociado a Residente de El Prado 4186 creado!!"


Resident.create!(:address => "El Prado 4185")
puts "Residente El Prado 4185 creado"


Resident.create!(:address => "El Prado 4197")
puts "Residente El Prado 4197 creado"


Resident.create!(:address => "El Prado 4198")
puts "Residente El Prado 4198 creado"

#Tag.create!(:resident_id => "15", :tag_value => "667DA")
#puts "Tag 667DC asociado a Residente de El Prado 4198 creado!!"

#Tag.create!(:resident_id => "15", :tag_value => "667DB")
#puts "Tag 667DB asociado a Residente de El Prado 4198 creado!!"

#Tag.create!(:resident_id => "15", :tag_value => "667DC")
#puts "Tag 667DC asociado a Residente de El Prado 4198 creado!!"


Resident.create!(:address => "El Prado 4209")
puts "Residente El Prado 4209 creado"

Tag.create!(:resident_id => "16", :tag_value => "0000-0000-0000-0000-0006-60D2")
puts "Tag 660D2 asociado a Residente de El Prado 4209 creado!!"

Tag.create!(:resident_id => "16", :tag_value => "0000-0000-0000-0000-0006-60D3")
puts "Tag 660D3 asociado a Residente de El Prado 4209 creado!!"

Tag.create!(:resident_id => "16", :tag_value => "0000-0000-0000-0000-0006-60D4")
puts "Tag 660D4 asociado a Residente de El Prado 4209 creado!!"


Resident.create!(:address => "El Prado 4210")
puts "Residente El Prado 4210 creado"

Tag.create!(:resident_id => "17", :tag_value => "0000-0000-0000-0000-0006-5FA5")
puts "Tag 65FA5 asociado a Residente de El Prado 4210 creado!!"

Tag.create!(:resident_id => "17", :tag_value => "0000-0000-0000-0000-0006-5FA6")
puts "Tag 65FA6 asociado a Residente de El Prado 4210 creado!!"

Tag.create!(:resident_id => "17", :tag_value => "0000-0000-0000-0000-0006-5FA7")
puts "Tag 65FA7 asociado a Residente de El Prado 4210 creado!!"


Resident.create!(:address => "El Prado 4215")
puts "Residente El Prado 4215 creado"

Tag.create!(:resident_id => "18", :tag_value => "0000-0000-0000-0000-0006-7BC6")
puts "Tag 67BC6 asociado a Residente de El Prado 4215 creado!!"

Tag.create!(:resident_id => "18", :tag_value => "0000-0000-0000-0000-0006-7BC7")
puts "Tag 67BC7 asociado a Residente de El Prado 4215 creado!!"

Tag.create!(:resident_id => "18", :tag_value => "0000-0000-0000-0000-0006-7BC8")
puts "Tag 67BC8 asociado a Residente de El Prado 4215 creado!!"


Resident.create!(:address => "El Prado 4216")
puts "Residente El Prado 4216 creado"

Tag.create!(:resident_id => "19", :tag_value => "0000-0000-0000-0000-0006-858A")
puts "Tag 6858A asociado a Residente de El Prado 4216 creado!!"

Tag.create!(:resident_id => "19", :tag_value => "0000-0000-0000-0000-0006-858B")
puts "Tag 6858B asociado a Residente de El Prado 4216 creado!!"

Tag.create!(:resident_id => "19", :tag_value => "0000-0000-0000-0000-0006-858C")
puts "Tag 6858C asociado a Residente de El Prado 4216 creado!!"


Resident.create!(:address => "El Prado 4227")
puts "Residente El Prado 4227 creado"

Tag.create!(:resident_id => "20", :tag_value => "0000-0000-0000-0000-0006-777A")
puts "Tag 6777A asociado a Residente de El Prado 4227 creado!!"

Tag.create!(:resident_id => "20", :tag_value => "0000-0000-0000-0000-0006-777B")
puts "Tag 6777B asociado a Residente de El Prado 4227 creado!!"

Tag.create!(:resident_id => "20", :tag_value => "0000-0000-0000-0000-0006-777C")
puts "Tag 6777C asociado a Residente de El Prado 4227 creado!!"


Resident.create!(:address => "El Prado 4239")
puts "Residente El Prado 4239 creado"

Tag.create!(:resident_id => "21", :tag_value => "0000-0000-0000-0000-0006-45DD")
puts "Tag 645DD asociado a Residente de El Prado 4239 creado!!"

Tag.create!(:resident_id => "21", :tag_value => "0000-0000-0000-0000-0006-45DE")
puts "Tag 645DE asociado a Residente de El Prado 4239 creado!!"

Tag.create!(:resident_id => "21", :tag_value => "0000-0000-0000-0000-0006-45DF")
puts "Tag 645DF asociado a Residente de El Prado 4239 creado!!"


Resident.create!(:address => "El Prado 4245")
puts "Residente El Prado 4245 creado"

Tag.create!(:resident_id => "22", :tag_value => "0000-0000-0000-0000-0006-6BC1")
puts "Tag 66BC1 asociado a Residente de El Prado 4245 creado!!"

Tag.create!(:resident_id => "22", :tag_value => "0000-0000-0000-0000-0006-6BC2")
puts "Tag 66BC2 asociado a Residente de El Prado 4245 creado!!"

Tag.create!(:resident_id => "22", :tag_value => "0000-0000-0000-0000-0006-6BC3")
puts "Tag 66BC3 asociado a Residente de El Prado 4245 creado!!"


Resident.create!(:address => "El Prado 4257")
puts "Residente El Prado 4257 creado"

Tag.create!(:resident_id => "23", :tag_value => "0000-0000-0000-0000-0006-4C81")
puts "Tag 64C81 asociado a Residente de El Prado 4257 creado!!"

Tag.create!(:resident_id => "23", :tag_value => "0000-0000-0000-0000-0006-4C82")
puts "Tag 64C82 asociado a Residente de El Prado 4257 creado!!"

Tag.create!(:resident_id => "23", :tag_value => "0000-0000-0000-0000-0006-4C83")
puts "Tag 64C83 asociado a Residente de El Prado 4257 creado!!"


Resident.create!(:address => "El Prado 4258")
puts "Residente El Prado 4258 creado"

Tag.create!(:resident_id => "24", :tag_value => "0000-0000-0000-0000-0006-47D1")
puts "Tag 647D1 asociado a Residente de El Prado 4258 creado!!"

Tag.create!(:resident_id => "24", :tag_value => "0000-0000-0000-0000-0006-47D2")
puts "Tag 647D2 asociado a Residente de El Prado 4258 creado!!"

Tag.create!(:resident_id => "24", :tag_value => "0000-0000-0000-0000-0006-47D3")
puts "Tag 647D3 asociado a Residente de El Prado 4258 creado!!"


Resident.create!(:address => "El Prado 4269")
puts "Residente El Prado 4269 creado"


Resident.create!(:address => "El Prado 4270")
puts "Residente El Prado 4270 creado"

Tag.create!(:resident_id => "26", :tag_value => "0000-0000-0000-0000-0006-7C2A")
puts "Tag 67C2A asociado a Residente de El Prado 4270 creado!!"

Tag.create!(:resident_id => "26", :tag_value => "0000-0000-0000-0000-0006-7C2B")
puts "Tag 67C2B asociado a Residente de El Prado 4270 creado!!"

Tag.create!(:resident_id => "26", :tag_value => "0000-0000-0000-0000-0006-7C2C")
puts "Tag 67C2C asociado a Residente de El Prado 4270 creado!!"


Resident.create!(:address => "El Prado 4276")
puts "Residente El Prado 4276 creado"

Tag.create!(:resident_id => "27", :tag_value => "0000-0000-0000-0000-0006-83FA")
puts "Tag 683FA asociado a Residente de El Prado 4276 creado!!"

Tag.create!(:resident_id => "27", :tag_value => "0000-0000-0000-0000-0006-83FB")
puts "Tag 683FB asociado a Residente de El Prado 4276 creado!!"

Tag.create!(:resident_id => "27", :tag_value => "0000-0000-0000-0000-0006-83FC")
puts "Tag 683FC asociado a Residente de El Prado 4276 creado!!"


Resident.create!(:address => "La Senda Sur 4238")
puts "Residente La Senda Sur 4238 creado"

Tag.create!(:resident_id => "28", :tag_value => "0000-0000-0000-0000-0006-67D9")
puts "Tag 667D9 asociado a Residente de La Senda Sur 4238 creado!!"

Tag.create!(:resident_id => "28", :tag_value => "0000-0000-0000-0000-0006-6BC4")
puts "Tag 66BC4 asociado a Residente de La Senda Sur 4238 creado!!"

Tag.create!(:resident_id => "28", :tag_value => "0000-0000-0000-0000-0006-4C84")
puts "Tag 64C84 asociado a Residente de La Senda Sur 4238 creado!!"


Resident.create!(:address => "La Senda Sur 4249")
puts "Residente La Senda Sur 4249 creado"


Resident.create!(:address => "La Senda Sur 4250")
puts "Residente La Senda Sur 4250 creado"

Tag.create!(:resident_id => "30", :tag_value => "0000-0000-0000-0000-0006-5AF8")
puts "Tag 65AF8 asociado a Residente de La Senda Sur 4250 creado!!"

Tag.create!(:resident_id => "30", :tag_value => "0000-0000-0000-0000-0006-40CA")
puts "Tag 640CA asociado a Residente de La Senda Sur 4250 creado!!"

Tag.create!(:resident_id => "30", :tag_value => "0000-0000-0000-0000-0006-6C28")
puts "Tag 66C28 asociado a Residente de La Senda Sur 4250 creado!!"


Resident.create!(:address => "La Senda Sur 4261")
puts "Residente La Senda Sur 4261 creado"

Tag.create!(:resident_id => "31", :tag_value => "0000-0000-0000-0000-0006-7F4A")
puts "Tag 67F4A asociado a Residente de La Senda Sur 4261 creado!!"

Tag.create!(:resident_id => "31", :tag_value => "0000-0000-0000-0000-0006-7F4B")
puts "Tag 67F4B asociado a Residente de La Senda Sur 4261 creado!!"

Tag.create!(:resident_id => "31", :tag_value => "0000-0000-0000-0000-0006-7F4C")
puts "Tag 67F4C asociado a Residente de La Senda Sur 4261 creado!!"


Resident.create!(:address => "La Senda Sur 4262")
puts "Residente La Senda Sur 4262 creado"

Tag.create!(:resident_id => "32", :tag_value => "0000-0000-0000-0000-0006-7EE8")
puts "Tag 67EE8 asociado a Residente de La Senda Sur 4262 creado!!"

Tag.create!(:resident_id => "32", :tag_value => "0000-0000-0000-0000-0006-7A35")
puts "Tag 67A35 asociado a Residente de La Senda Sur 4262 creado!!"

Tag.create!(:resident_id => "32", :tag_value => "0000-0000-0000-0000-0006-5C24")
puts "Tag 65C24 asociado a Residente de La Senda Sur 4262 creado!!"


Resident.create!(:address => "La Senda Sur 4274")
puts "Residente La Senda Sur 4274 creado"


Resident.create!(:address => "La Senda Sur 4148")
puts "Residente La Senda 4148 creado"

Tag.create!(:resident_id => "34", :tag_value => "0000-0000-0000-0000-0006-80DA")
puts "Tag 680DA asociado a Residente de La Senda 4148 creado!!"

Tag.create!(:resident_id => "34", :tag_value => "0000-0000-0000-0000-0006-80DB")
puts "Tag 680DB asociado a Residente de La Senda 4148 creado!!"

Tag.create!(:resident_id => "34", :tag_value => "0000-0000-0000-0000-0006-80DC")
puts "Tag 680DC asociado a Residente de La Senda 4148 creado!!"


Resident.create!(:address => "La Senda 4165")
puts "Residente La Senda 4165 creado"

Tag.create!(:resident_id => "35", :tag_value => "0000-0000-0000-0000-0006-E3AD")
puts "Tag 6E3AD asociado a Residente de La Senda 4165 creado!!"

Tag.create!(:resident_id => "35", :tag_value => "0000-0000-0000-0000-0006-E3AE")
puts "Tag 6E3AE asociado a Residente de La Senda 4165 creado!!"

Tag.create!(:resident_id => "35", :tag_value => "0000-0000-0000-0000-0006-E3AF")
puts "Tag 6E3AF asociado a Residente de La Senda 4165 creado!!"


Resident.create!(:address => "La Senda 4166")
puts "Residente La Senda 4166 creado"

Tag.create!(:resident_id => "36", :tag_value => "0000-0000-0000-0000-0006-5C21")
puts "Tag 65C21 asociado a Residente de La Senda 4166 creado!!"

Tag.create!(:resident_id => "36", :tag_value => "0000-0000-0000-0000-0006-5C22")
puts "Tag 65C22 asociado a Residente de La Senda 4166 creado!!"

Tag.create!(:resident_id => "36", :tag_value => "0000-0000-0000-0000-0006-5C23")
puts "Tag 65C23 asociado a Residente de La Senda 4166 creado!!"


Resident.create!(:address => "La Senda 4177")
puts "Residente La Senda 4177 creado"

Tag.create!(:resident_id => "37", :tag_value => "0000-0000-0000-0000-0006-412D")
puts "Tag 6412D asociado a Residente de La Senda 4177 creado!!"

Tag.create!(:resident_id => "37", :tag_value => "0000-0000-0000-0000-0006-412E")
puts "Tag 6412E asociado a Residente de La Senda 4177 creado!!"

Tag.create!(:resident_id => "37", :tag_value => "0000-0000-0000-0000-0006-412F")
puts "Tag 6412F asociado a Residente de La Senda 4177 creado!!"


Resident.create!(:address => "La Senda 4178")
puts "Residente La Senda 4178 creado"

Tag.create!(:resident_id => "38", :tag_value => "0000-0000-0000-0000-0006-6EE1")
puts "Tag 66EE1 asociado a Residente de La Senda 4178 creado!!"

Tag.create!(:resident_id => "38", :tag_value => "0000-0000-0000-0000-0006-6EE2")
puts "Tag 66EE2 asociado a Residente de La Senda 4178 creado!!"

Tag.create!(:resident_id => "38", :tag_value => "0000-0000-0000-0000-0006-6EE3")
puts "Tag 66EE3 asociado a Residente de La Senda 4178 creado!!"


Resident.create!(:address => "La Senda 4190")
puts "Residente La Senda 4190 creado"

Tag.create!(:resident_id => "39", :tag_value => "0000-0000-0000-0000-0006-6C8A")
puts "Tag 66C8A asociado a Residente de La Senda 4190 creado!!"

Tag.create!(:resident_id => "39", :tag_value => "0000-0000-0000-0000-0006-6C8B")
puts "Tag 66C8B asociado a Residente de La Senda 4190 creado!!"

Tag.create!(:resident_id => "39", :tag_value => "0000-0000-0000-0000-0006-6C8C")
puts "Tag 66C8C asociado a Residente de La Senda 4190 creado!!"


Resident.create!(:address => "La Senda 4195")
puts "Residente La Senda 4195 creado"

Tag.create!(:resident_id => "40", :tag_value => "0000-0000-0000-0000-0006-6C1D")
puts "Tag 66C1D asociado a Residente de La Senda 4195 creado!!"

Tag.create!(:resident_id => "40", :tag_value => "0000-0000-0000-0000-0006-6C1E")
puts "Tag 66C1E asociado a Residente de La Senda 4195 creado!!"

Tag.create!(:resident_id => "40", :tag_value => "0000-0000-0000-0000-0006-6C1F")
puts "Tag 66C1F asociado a Residente de La Senda 4195 creado!!"


Resident.create!(:address => "La Senda 4189")
puts "Residente La Senda 4189 creado"

Tag.create!(:resident_id => "41", :tag_value => "0000-0000-0000-0000-0006-606D")
puts "Tag 6606D asociado a Residente de La Senda 4189 creado!!"

Tag.create!(:resident_id => "41", :tag_value => "0000-0000-0000-0000-0006-606E")
puts "Tag 6606E asociado a Residente de La Senda 4189 creado!!"

Tag.create!(:resident_id => "41", :tag_value => "0000-0000-0000-0000-0006-606F")
puts "Tag 6606F asociado a Residente de La Senda 4189 creado!!"


Resident.create!(:address => "La Senda 4196")
puts "Residente La Senda 4196 creado"

Tag.create!(:resident_id => "42", :tag_value => "0000-0000-0000-0000-0006-476D")
puts "Tag 6476D asociado a Residente de La Senda 4196 creado!!"

Tag.create!(:resident_id => "42", :tag_value => "0000-0000-0000-0000-0006-476E")
puts "Tag 6476E asociado a Residente de La Senda 4196 creado!!"

Tag.create!(:resident_id => "42", :tag_value => "0000-0000-0000-0000-0006-476F")
puts "Tag 6476F asociado a Residente de La Senda 4196 creado!!"


Resident.create!(:address => "La Senda 4207")
puts "Residente La Senda 4207 creado"

Tag.create!(:resident_id => "43", :tag_value => "0000-0000-0000-0000-0006-50CD")
puts "Tag 650CD asociado a Residente de La Senda 4207 creado!!"

Tag.create!(:resident_id => "43", :tag_value => "0000-0000-0000-0000-0006-50CE")
puts "Tag 650CE asociado a Residente de La Senda 4207 creado!!"

Tag.create!(:resident_id => "43", :tag_value => "0000-0000-0000-0000-0006-50CF")
puts "Tag 650CF asociado a Residente de La Senda 4207 creado!!"


Resident.create!(:address => "La Senda 4208")
puts "Residente La Senda 4208 creado"

Tag.create!(:resident_id => "44", :tag_value => "0000-0000-0000-0000-0006-6B5D")
puts "Tag 66B5D asociado a Residente de La Senda 4208 creado!!"

Tag.create!(:resident_id => "44", :tag_value => "0000-0000-0000-0000-0006-6B5E")
puts "Tag 66B5E asociado a Residente de La Senda 4208 creado!!"

Tag.create!(:resident_id => "44", :tag_value => "0000-0000-0000-0000-0006-6B5F")
puts "Tag 66B5F asociado a Residente de La Senda 4208 creado!!"


Resident.create!(:address => "La Senda 4219")
puts "Residente La Senda 4219 creado"

Tag.create!(:resident_id => "45", :tag_value => "0000-0000-0000-0000-0006-62C5")
puts "Tag 662C5 asociado a Residente de La Senda 4219 creado!!"

Tag.create!(:resident_id => "45", :tag_value => "0000-0000-0000-0000-0006-62C6")
puts "Tag 662C6 asociado a Residente de La Senda 4219 creado!!"

Tag.create!(:resident_id => "45", :tag_value => "0000-0000-0000-0000-0006-62C7")
puts "Tag 662C7 asociado a Residente de La Senda 4219 creado!!"


Resident.create!(:address => "La Senda 4220")
puts "Residente La Senda 4220 creado"

Tag.create!(:resident_id => "46", :tag_value => "0000-0000-0000-0000-0006-700D")
puts "Tag 6700D asociado a Residente de La Senda 4220 creado!!"

Tag.create!(:resident_id => "46", :tag_value => "0000-0000-0000-0000-0006-700E")
puts "Tag 6700E asociado a Residente de La Senda 4220 creado!!"

Tag.create!(:resident_id => "46", :tag_value => "0000-0000-0000-0000-0006-700F")
puts "Tag 6700F asociado a Residente de La Senda 4220 creado!!"


Resident.create!(:address => "La Senda 4228")
puts "Residente La Senda 4228 creado"


Resident.create!(:address => "La Senda Norte 4097")
puts "Residente La Senda Norte 4097 creado"

Tag.create!(:resident_id => "48", :tag_value => "0000-0000-0000-0000-0006-5BBD")
puts "Tag 65BBD asociado a Residente de La Senda Norte 4097 creado!!"

Tag.create!(:resident_id => "48", :tag_value => "0000-0000-0000-0000-0006-5BBE")
puts "Tag 65BBE asociado a Residente de La Senda Norte 4097 creado!!"

Tag.create!(:resident_id => "48", :tag_value => "0000-0000-0000-0000-0006-5BBF")
puts "Tag 65BBF asociado a Residente de La Senda Norte 4097 creado!!"


Resident.create!(:address => "La Senda Norte 4111")
puts "Residente La Senda Norte 4111 creado"

Tag.create!(:resident_id => "49", :tag_value => "0000-0000-0000-0000-0006-68A1")
puts "Tag 668A1 asociado a Residente de La Senda Norte 4097 creado!!"

Tag.create!(:resident_id => "49", :tag_value => "0000-0000-0000-0000-0006-68A2")
puts "Tag 668A2 asociado a Residente de La Senda Norte 4097 creado!!"

Tag.create!(:resident_id => "49", :tag_value => "0000-0000-0000-0000-0006-68A3")
puts "Tag 668A3 asociado a Residente de La Senda Norte 4097 creado!!"


Resident.create!(:address => "La Senda Norte 4112")
puts "Residente La Senda Norte 4112 creado"


Resident.create!(:address => "La Senda Norte 4128")
puts "Residente La Senda Norte 4128 creado"

Tag.create!(:resident_id => "51", :tag_value => "0000-0000-0000-0000-0006-67DA")
puts "Tag 667DA asociado a Residente de La Senda Norte 4128 creado!!"

Tag.create!(:resident_id => "51", :tag_value => "0000-0000-0000-0000-0006-67DB")
puts "Tag 667DB asociado a Residente de La Senda Norte 4128 creado!!"

Tag.create!(:resident_id => "51", :tag_value => "0000-0000-0000-0000-0006-67DC")
puts "Tag 667DC asociado a Residente de La Senda Norte 4128 creado!!"


Resident.create!(:address => "La Senda Norte 4138")
puts "Residente La Senda Norte 4138 creado"

Tag.create!(:resident_id => "52", :tag_value => "0000-0000-0000-0000-0006-7BC5")
puts "Tag 67BC5 asociado a Residente de La Senda Norte 4138 creado!!"

Tag.create!(:resident_id => "52", :tag_value => "0000-0000-0000-0000-0006-5BC0")
puts "Tag 65BC0 asociado a Residente de La Senda Norte 4138 creado!!"

Tag.create!(:resident_id => "52", :tag_value => "0000-0000-0000-0000-0006-570D")
puts "Tag 6570D asociado a Residente de La Senda Norte 4138 creado!!"


Resident.create!(:address => "La Senda Norte 11040")
puts "Residente La Senda Norte 11040 creado"


Resident.create!(:address => "La Senda Norte 11050")
puts "Residente La Senda Norte 11050 creado"


Resident.create!(:address => "La Senda Norte 11060")
puts "Residente La Senda Norte 11060 creado"

Tag.create!(:resident_id => "55", :tag_value => "0000-0000-0000-0000-0006-68A4")
puts "Tag 668A4 asociado a Residente de La Senda Norte 11060 creado!!"

Tag.create!(:resident_id => "55", :tag_value => "0000-0000-0000-0000-0006-62C8")
puts "Tag 662C8 asociado a Residente de La Senda Norte 11060 creado!!"

Tag.create!(:resident_id => "55", :tag_value => "0000-0000-0000-0000-0006-6B60")
puts "Tag 66B60 asociado a Residente de La Senda Norte 11060 creado!!"









Visitor.create!(:patente => "ERTE-43")
puts "Visita Ejemplo 1 creada"

Plate.create!(:tag_value => "0000-0000-0000-0000-0006-67DB")
puts "Entrada de Residente con tag 0000-0000-0000-0000-0006-67DB creado"


