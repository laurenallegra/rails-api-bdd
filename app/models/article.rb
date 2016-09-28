class Article < ActiveRecord::Base
  validates :content, presence: true
  # validates_presence_of :content -- old way to write above
  validates :title, presence: true

  has_many :comments, inverse_of: :article, dependent: :destroy
end
