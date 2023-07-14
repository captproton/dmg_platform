class LeadsController < ApplicationController
    layout 'application'
    def new
        self.guaranteed_site_profile
        @lead = Lead.new
        
    end

    def show
        @lead = Lead.find(params[:id])
    end

    def create
        @lead = Lead.new(lead_params)
        if @lead.save
            LeadNotification.with(lead: @lead).deliver_later(User.all)
            redirect_to @lead
        else
            render 'new'
        end
    end

    private
        def lead_params
            params.require(:lead).permit(:first_name, :last_name, :email_address, :phone, :message_body, :subject)
        end

        def guaranteed_site_profile
            @site_profile = SiteProfile.first
            if @site_profile.nil?
                @site_profile = SiteProfile.create!( street01: "",
                street02: "",
                city: "",
                state: "",
                postal_code: "",
                phone: "",
                email: "",
                contact_message: "")
            end
        end
        
end
