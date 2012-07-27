class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :authenticate_user!

	private
	def after_sign_out_path_for(resource_or_scope)
		scope = Devise::Mapping.find_scope!(resource_or_scope)
		send(:"new_#{scope}_session_path")
	end

	def after_sign_in_path_for(resource)
		# Merge data from Facebook with her current account
		if session["facebook_data"] && current_user.facebook_uid.nil?
			current_user.facebook_uid = session["facebook_data"]["uid"]
			current_user.save(:validate => false)
		end
		# Countermeasure against session fixation
		session.keys.grep(/^facebook\./).each { |k| session.delete(k) }

		super
	end
end
