class SiteProfileResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :street01, as: :text
  field :street02, as: :text
  field :city, as: :text
  field :state, as: :text
  field :postal_code, as: :text
  field :phone, as: :text
  field :email, as: :text
  field :contact_message, as: :textarea

  # add fields here
end
