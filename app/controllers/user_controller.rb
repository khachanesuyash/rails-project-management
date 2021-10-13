class UserController < ApplicationController
    private
    def user_params
        params.require(:user).permit(:id, :email, :name, :is_active, :is_admin)
    end

end
