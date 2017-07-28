require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
    # ATTRIBUTE_TYPES
    # a hash that describes the type of each of the model's fields.
    #
    # Each different type represents an Administrate::Field object,
    # which determines how the attribute is displayed
    # on pages throughout the dashboard.
    ATTRIBUTE_TYPES = {
        admin: Field::Boolean,
        id: Field::Number,
        user_name: Field::String,
        email: Field::String,
        password: Field::String,
        password_confirmation: Field::String,
        reset_password_sent_at: Field::DateTime,
        remember_created_at: Field::DateTime,
        sign_in_count: Field::Number,
        current_sign_in_at: Field::DateTime,
        last_sign_in_at: Field::DateTime,
        current_sign_in_ip: Field::String.with_options(searchable: false),
        last_sign_in_ip: Field::String.with_options(searchable: false),
        created_at: Field::DateTime,
        updated_at: Field::DateTime,
    }.freeze

    # COLLECTION_ATTRIBUTES
    # an array of attributes that will be displayed on the model's index page.
    #
    # By default, it's limited to four items to reduce clutter on index pages.
    # Feel free to add, remove, or rearrange items.
    COLLECTION_ATTRIBUTES = [
        :user_name,
        :email,
        :admin,
        :id,
    ].freeze

    # SHOW_PAGE_ATTRIBUTES
    # an array of attributes that will be displayed on the model's show page.
    SHOW_PAGE_ATTRIBUTES = [
        :id,
        :admin,
        :user_name,
        :email,
        :created_at,
        :updated_at,
    ].freeze

    # FORM_ATTRIBUTES
    # an array of attributes that will be displayed
    # on the model's form (`new` and `edit`) pages.
    FORM_ATTRIBUTES = [
        :user_name,
        :email,
        :password,
        :password_confirmation,
        :admin,
    ].freeze

    def display_resource(user)
        user.user_name
    end
    # Overwrite this method to customize how users are displayed
    # across all pages of the admin dashboard.
    #
    # def display_resource(user)
    #   "User ##{user.id}"
    # end

end
