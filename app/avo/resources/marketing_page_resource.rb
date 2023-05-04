class MarketingPageResource < Avo::BaseResource
  # friendly_id
  self.resolve_find_scope = ->(model_class:) do
    model_class.friendly
  end

  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :title, as: :text
  # add fields here
  field :subtitle, as: :text
  field :content, as: :trix
  field :cover_photo, as: :file, is_image: true, link_to_resource: true
  field :tags,
    as: :tags,
    acts_as_taggable_on: :tags,
    close_on_select: true,
    placeholder: "Add some tags"

end
