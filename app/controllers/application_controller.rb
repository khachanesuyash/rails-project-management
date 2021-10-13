class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_in) do |user_params|
          user_params.permit(:id, :email, :password, :name)
        end
    end 
end
