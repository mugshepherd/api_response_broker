# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)	
Response.delete_all
# @responses = Response.get_api_info
@responses = Response.seedData
@responses.each do |response|
  begin
  	#this pulls in new records that have been added to the api and adds them to the database.  it doesn't pull in records from the api that are already in the db
    
    # Response.find_or_create_by(lemurs_quantity: responses['lemurs_quantity'], month_and_year:  Date.parse(responses['month_and_year']), _geolocation: responses['_geolocation'].split(",").map { |s| s.to_i }, lemur_category: responses['lemur_category'], location_admin1: responses['location_admin1'], location_admin2: responses['location_admin2'])
    # Response.create(record_id: response['_id'], lemurs_quantity: response['lemurs_quantity'], sighting_month: response['sighting_month'], sighting_year: response['sighting_year'], lemur_category: response['lemur_category'], location_admin1: response['location_admin1'], location_admin2: response['location_admin2'])    

    Response.create(record_id: response['_id'], saw_captive_lemur: response['saw_captive_lemur'], lemurs_quantity: response['lemurs_quantity'], sighting_month: response['sighting_month'], sighting_year: response['sighting_year'], lemur_category: response['lemur_category'], location_admin1: response['location_admin1'], location_admin2: response['location_admin2'], environment: response['environment'], captive_environment: response['captive_environment'] )


  #some of my records don't have valid date values, so `rescue` is added to keep rails from returning a `notfound` page.  quick tutorial here:  http://www.rubytutorial.io/rails-rescue_from/
  rescue 
    puts "rescued"
  end
end