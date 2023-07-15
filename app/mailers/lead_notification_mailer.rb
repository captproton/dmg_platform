class LeadNotificationMailer < ApplicationMailer
    def lead_notification(*args)
        # array of emails to send to
        support_team_email_group = User.support_team.map {|u| u.email} << "carl@dicemediagroup.com"
        puts "lead notification args: #{args}"
        # @user = params[:user]
        @lead = params[:lead]
        mail(
            to: support_team_email_group, 
            subject: 'You have a new lead',
            track_opens: 'true',
            message_stream: 'outbound'
            )
    end
end
