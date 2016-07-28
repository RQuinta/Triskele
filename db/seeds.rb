require 'net/http'
require 'net/https' # for ruby 1.8.7
require 'json'

module BRPopulate
  def self.states
    http = Net::HTTP.new('raw.githubusercontent.com', 443); http.use_ssl = true
    JSON.parse http.get('/celsodantas/br_populate/master/states.json').body
  end

  def self.populate
   country_obj = Country.new(:name => "Brasil", :acronym => "BR", active => true)
   country_obj.save
   states.each do |state|
      state_obj = State.new(:acronym => state["acronym"], :name => state["name"], :active => false)
      state_obj.save
      state["cities"].each do |city|
        c = City.new
        c.name = city["name"]
        c.state = state_obj
        c.save
      end
    end
   end
end

BRPopulate.populate
