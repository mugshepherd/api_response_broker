module Doorkeeper
	class CustomApplicationsController < Doorkeeper::ApplicationsController
		def index
			@applications = Application.all
			render json: @applications, status: :ok
		end
	end
end

