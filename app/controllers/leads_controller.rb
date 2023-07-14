class LeadsController < ApplicationController
    layout 'application'
    def new
        @lead = Lead.new
        @site_profile = SiteProfile.first
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
        
end
