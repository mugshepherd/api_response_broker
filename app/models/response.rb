class Response < ActiveRecord::Base

	# require 'rest_client'

	# USERNAME = ENV['API_USER']
	# PASSWORD = ENV['API_PWD']
	# API_PK = ENV['API_SURVEY']
	# API_BASE_URL = ENV['API_BASE_URL']

	# def self.get_api_info
	# 	# uri = "#{API_BASE_URL}/data/#{API_PK}?format=json"
	# 	# rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
	# 	# response = rest_resource.get
	# 	JSON.parse response
	# end

	def self.seedData
		# uri = "#{API_BASE_URL}/data/#{API_PK}?format=json"
		# rest_resource = RestClient::Resource.new(uri, USERNAME, PASSWORD)
		# response = rest_resource.get
		# response = File.read('db/20171209_dataExport_20171209-184425.json')
		response = File.read('db/data_petLemurSurvey_20171210-132227.json')
		JSON.parse response
	end
end
