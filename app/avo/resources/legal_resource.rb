class LegalResource < Avo::BaseResource
  # friendly_id
  # self.resolve_find_scope = ->(model_class:) do
  #   model_class.friendly
  # end

  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # add fields here
  field :id, as: :id
  field :title, as: :text, required: true
  field :content, as: :trix
  field :cover_photo, as: :file, is_image: true, link_to_resource: true
  # add fields here
end
