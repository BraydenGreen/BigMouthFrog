require "administrate/base_dashboard"

class LeadDashboard < Administrate::BaseDashboard
    # ATTRIBUTE_TYPES
    # a hash that describes the type of each of the model's fields.
    #
    # Each different type represents an Administrate::Field object,
    # which determines how the attribute is displayed
    # on pages throughout the dashboard.
    ATTRIBUTE_TYPES = {
        name: Field::String,
        id: Field::Number,
        company: Field::String,
        website_url: Field::String,
        phone: Field::String,
        email: Field::String,
        address: Field::String,
        city: Field::String,
        state: Field::String,
        zip: Field::Number,
        website_goals: Field::Text,
        contacted: Field::String.with_options(searchable: false),
        created_at: Field::DateTime,
        updated_at: Field::DateTime,
        lead_source: Field::String,
        notes: Field::HasMany,
    }.freeze

    # COLLECTION_ATTRIBUTES
    # an array of attributes that will be displayed on the model's index page.
    #
    # By default, it's limited to four items to reduce clutter on index pages.
    # Feel free to add, remove, or rearrange items.
    COLLECTION_ATTRIBUTES = [
        :name,
        :company,
        :contacted,
        :notes,        
        :created_at,
        :id,
    ].freeze

    # SHOW_PAGE_ATTRIBUTES
    # an array of attributes that will be displayed on the model's show page.
    SHOW_PAGE_ATTRIBUTES = [
        :id,
        :name,
        :company,
        :website_url,
        :phone,
        :email,
        :address,
        :city,
        :state,
        :zip,
        :website_goals,
        :notes,
        :contacted,
        :created_at,
        :updated_at,
        :lead_source,
    ].freeze

    # FORM_ATTRIBUTES
    # an array of attributes that will be displayed
    # on the model's form (`new` and `edit`) pages.
    FORM_ATTRIBUTES = [
        :name,
        :company,
        :website_url,
        :phone,
        :email,
        :address,
        :city,
        :state,
        :zip,
        :website_goals,
        :contacted,
        :lead_source,
    ].freeze

    def display_resource(lead)
        lead.company
    end
    # Overwrite this method to customize how leads are displayed
    # across all pages of the admin dashboard.
    #
    # def display_resource(lead)
    #   "Lead ##{lead.id}"
    # end
    
end
