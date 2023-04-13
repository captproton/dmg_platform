class LeadsController < ApplicationController
    def new
        @lead = Lead.new
    end

    def show
        @lead = Lead.find(params[:id])
    end

    def create
        @lead = Lead.new(lead_params)
        if @lead.save
            LeadNotification.with(lead: @lead).deliver(User.all)
            redirect_to @lead
        else
            render 'new'
        end
    end

    private
        def lead_params
            params.require(:lead).permit(:name, :email_address, :phone, :message_body, :subject)
        end
        
end
