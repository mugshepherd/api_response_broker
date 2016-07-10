class ResponsesController < ApplicationController
def index
		headers['Access-Control-Allow-Origin'] = 'http://localhost:8080/'
		@responses = Response.get_api_info
		# puts "@responses: #{@responses.inspect}"
		puts "!!![count from api] @responses count: #{@responses.count}"
		puts "!!![count from database] @responses count: #{Response.all.count}" 
		@responses.each do |response|
			puts "response: #{response.inspect}"

    Response.find_or_create_by(record_id: response['_id'], lemurs_quantity: response['lemurs_quantity'], sighting_month: response['sighting_month'], sighting_year: response['sighting_year'], lemur_category: response['lemur_category'], location_admin1: response['location_admin1'], location_admin2: response['location_admin2'])

		end
		#i needed to update my render logic.  see addition of `each_serializer` here.  @responses has also changed to Response.all as well.
    render(	
      json: Response.all,
      each_serializer: ResponseSerializer
    )
	end
end

