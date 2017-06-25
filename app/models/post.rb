class Post
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
  has_many :comments, dependent: :destroy

end
