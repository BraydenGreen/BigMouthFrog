module Admin
    class NotesController < Admin::ApplicationController

        def verify_is_admin
            if  current_user.admin?
            else
                redirect_to admin_leads_path, notice: "Admin Action"
            end
        end
    end
end
