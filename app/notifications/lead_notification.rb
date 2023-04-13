# To deliver this notification:
#
# LeadNotification.with(lead: @lead).deliver_later(User.all)
# LeadNotification.with(lead: @lead).deliver(current_user)

class LeadNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  deliver_by :email, mailer: "LeadNotificationMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  param :lead

  # Define helper methods to make rendering easier.
  #
  def message
    t(".message")
  end
  #
  def url
    lead_path(params[:lead])
  end
end
