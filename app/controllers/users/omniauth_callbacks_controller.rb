class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def facebook
		@user = User.find_for_facebook_oauth(env["omniauth.auth"], current_user)

		if @user && @user.persisted?
			flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
			sign_in_and_redirect @user, :event => :authentication
		else
			session["devise.facebook_data"] = env["omniauth.auth"]
			redirect_to new_user_registration_url
		end
	end
	
	# This is necessary since Rails 3.0.4
	# See https://github.com/intridea/omniauth/issues/185
	# and http://www.arailsdemo.com/posts/44
	protected
	def handle_unverified_request
  		true
	end
end
