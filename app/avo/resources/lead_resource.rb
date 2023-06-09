class LeadResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :phone, as: :text
  field :email_address, as: :text
  field :subject, as: :text
  field :message_body, as: :textarea
  # add fields here
end
