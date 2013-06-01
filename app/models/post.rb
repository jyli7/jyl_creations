class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  before_create :create_slug

  field :title, type: String
  field :body, type: String
  field :slug, type: String
  field :written_at, type: Date

  def create_slug
    self.slug = self.title.parameterize
  end

  def display_time
    self.written_at || self.created_at || self.updated_at
  end
end