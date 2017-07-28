module Admin
    class UsersController < Admin::ApplicationController
        before_action :verify_is_admin, :only => [:new, :edit, :create, :destroy]

        private

        def verify_is_admin
            if  current_user.admin?
            else
                redirect_to admin_users_path, notice: "Admin Action"
            end
        end
    end
end
