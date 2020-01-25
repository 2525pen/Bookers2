class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	end

	def after_sign_up_path_for(resource)
	    flash[:notice] = "Welcome! You have signed up successfully."
        user_books_path
    end


	def after_sign_in_path_for(resource)
	  if current_user
	    flash[:notice] = "Signed in successfully."
	    user_books_path
	  else
	    flash[:notice] = "Welcome! You have signed up successfully."
	    user_books_path
	  end
	end

	def after_sign_out_path_for(resource)
		flash[:notice] = "Signed out successfully."
	    root_path
	end

end