class ApplicationController < ActionController::API
	include ActionController::Serialization
	include ActionController::HttpAuthentication::Basic::ControllerMethods
	include ActionController::ImplicitRender
	include ActionController::Rescue
end
