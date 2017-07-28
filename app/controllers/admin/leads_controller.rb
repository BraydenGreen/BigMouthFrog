module Admin
    class LeadsController < Admin::ApplicationController
        before_action :verify_is_admin, :only => [:new, :edit, :create, :destroy]
        def index
            super
            @leads = Lead.order("created_at DESC")
        end

        private
        def verify_is_admin
           if  current_user.admin?
            else
                redirect_to admin_leads_path, notice: "Admin Action"
            end
        end
    end
end
