# Site containing accounts with passwords
class Site < ActiveRecord::Base
  has_many :accounts
  has_many :notes, as: :notable, dependent: :destroy
  has_many :tag_links, as: :taggable, dependent: :destroy
  has_many :tags, through: :tag_links

  validates :name, presence: true
end

