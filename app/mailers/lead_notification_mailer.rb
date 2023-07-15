class LeadNotificationMailer < ApplicationMailer
    def lead_notification(*args)
        puts "lead notification args: #{args}"
        # @user = params[:user]
        @lead = params[:lead]
        mail(to: "mike@dicemediagroup.com", subject: 'You have a new lead')
    end
end
