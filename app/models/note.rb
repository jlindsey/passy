# Secure, encrypted note able to be optionally attached
# to some other object
class Note < ActiveRecord::Base
  belongs_to :notable, polymorphic: true
  has_many :tag_links, as: :taggable, dependent: :destroy
  has_many :tags, through: :tag_links

  validates :body, presence: true
end

