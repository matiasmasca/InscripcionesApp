# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = [{:nombre => 'Rubén Aguirre Jirafales',:email => 'profjirafales@elchavo.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
    	  {:nombre => 'Gregorio hobbit',:email => 'dostorres@hobbit.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'false'},
     	  {:nombre => 'Jazmin Itaca Suspendido',:email => 'jazmin@itaca.mx',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'false'},
     	  {:nombre => 'Ramon To',:email => 'contacto@terciar.ga',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
        {:nombre => 'Sr. Pepito Argento',:email => 'admin@club.com', :password => "clave12345", :password_confirmation => "clave12345", :tipo => '1', :habilitado => 'true'}
  	 ]

users.each do |user|
   User.create!(user)
end