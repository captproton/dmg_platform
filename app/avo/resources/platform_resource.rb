class PlatformResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :rank_number, as: :number
  field :name, as: :text
  field :svg_icon, as: :textarea
  field :link, as: :text
  # add fields here
end
