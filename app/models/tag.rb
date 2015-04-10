# Tag Model
# Connected to other models via TagLink
class Tag < ActiveRecord::Base
  has_many :tag_links, dependent: :destroy
  has_many :accounts, through: :tag_links, source: :taggable, source_type: "Account"
  has_many :sites, through: :tag_links, source: :taggable, source_type: "Site"
  has_many :notes, through: :tag_links, source: :taggable, source_type: "Note"

  validates :name, presence: true, uniqueness: true
end

