class EventResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :happening_on, as: :date_time
  field :title, as: :text
  field :place, as: :text
  field :more_info_link, as: :text
  # add fields here
  field :youtube_unique_id, as: :text

end
