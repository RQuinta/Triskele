

country_list = [
  [ "Brasil", "BR" ]
]
country_list.each do |name, acronym|
  Country.create( name: name, acronym: acronym )
end

state_list = [
  [ "Rio de Janeiro", "RJ" ]
]
country_list.each do |name, population|
  Country.create( name: name, acronym: population )
end

