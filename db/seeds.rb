require 'net/http'
require 'net/https' # for ruby 1.8.7
require 'json'

module BRPopulate
  def self.states
    http = Net::HTTP.new('raw.githubusercontent.com', 443); http.use_ssl = true
    JSON.parse http.get('/celsodantas/br_populate/master/states.json').body
  end

  def self.populate

   country_obj = Country.new(:name => "Brasil", :acronym => "BR", :active => true)

   country_obj.save
   states.each do |state|
      state_obj = State.new(:acronym => state["acronym"], :name => state["name"], :active => false)
      state_obj.save
      state["cities"].each do |city|
        c = City.new
        c.name = city["name"]
        c.state = state_obj
        c.active = false
        c.save
      end
    end
   end
end


BRPopulate.populate

sport_list = [
  [ "Arvorismo", false, false, true, false, false ],
  [ "Balonismo", false, true, false, false, false ],
  [ "Acquaride", true, false, false, false, false ],
  [ "Trilha", false, false, true, false, false ],
  [ "Canionismo", true, false, true, false, false ],
  [ "Cachoerismo", true, false, true, false, false ],
  [ "Canoagem", true, false, false, false, false ],
  [ "Passeio de Bicicleta", false, false, true, false, false ],
  [ "Escalada", false, false, true, false, false ],
  [ "Espeleoturismo", false, false, true, false, false ],
  [ "Flutuação", true, false, false, false, false ],
  [ "Kitesurf", true, false, false, false, false ],
  [ "Mergulho", true, false, false, false, false ],
  [ "Observação da Vida Selvagem", false, false, true, false, false ],
  [ "Observação de Pássaros", false, false, true, false, false ],
  [ "Salto de Paraquedas", false, true, false, false, false ],
  [ "Passeio de Quadriciclo", false, false, true, false, false ],
  [ "Rapel", false, false, true, false, false ],
  [ "Stand Up Paddle", true, false, false, false, false ],
  [ "Surf", true, false, false, false, false ],
  [ "Tirolesa", false, false, true, false, false ],
  [ "Turismo Rural", false, false, true, false, false ],
  [ "Passeio a Cavalo", false, false, true, false, false ],
  [ "Off Road", false, false, true, false, false ],
  [ "Buggy", false, false, true, false, false ],
  [ "Windsurf", true, false, false, false, false ],
  [ "Parapente", false, true, false, false, false ],
  [ "Asa Delta", false, true, false, false, false ],
  [ "Trekking", false, false, true, false, false ],
  [ "Rafting", true, false, false, false, false ]
]

sport_list.each do |name, water, air, land, need_documentation, active|
  Sport.create( name: name, water: water, air: air, land: land, need_documentation: need_documentation, active: active )
end


