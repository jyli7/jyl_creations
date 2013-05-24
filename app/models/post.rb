class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  before_create :create_slug

  field :title, type: String
  field :body, type: String
  field :slug, type: String

  def create_slug
    self.slug = self.title.parameterize
  end
end
