# Single account belonging to a site
class Account < ActiveRecord::Base
  belongs_to :site
  has_many :passwords
  has_one :current_password, class_name: "Password"
  has_many :tag_links, as: :taggable, dependent: :destroy
  has_many :tags, through: :tag_links

  validates :site, :username, presence: true
end

