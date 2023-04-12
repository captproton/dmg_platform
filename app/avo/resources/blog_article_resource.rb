class BlogArticleResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :title, as: :text
  # add fields here
  field :content, as: :trix
  field :cover_photo, as: :file, is_image: true, link_to_resource: true
  # field :user, as: :references, default: -> { current_user.id }, disabled: true
end
