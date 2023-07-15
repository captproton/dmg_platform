class LeadNotificationMailer < ApplicationMailer
    def lead_notification(*args)
        # array of emails to send to
        support_team = User.support_team << "carl@wdwhub.net"
        puts "lead notification args: #{args}"
        # @user = params[:user]
        @lead = params[:lead]
        mail(
            to: support_team, 
            subject: 'You have a new lead',
            track_opens: 'true',
            message_stream: 'outbound'
            )
    end
end
