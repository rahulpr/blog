class Comment
  include Mongoid::Document
  field :username, type: String
  field :body, type: String
  # embedded_in :post
  belongs_to :post
  validates :username, presence: true, length: {minimum: 6}
  validates :body,  presence: true
end
