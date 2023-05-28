class NavigationResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :prioritiy, as: :number
  field :key, as: :text
  field :name, as: :text
  field :url, as: :text
  # field :options, as: :text
  # add fields here
  field :svg_icon, as: :textarea
end
