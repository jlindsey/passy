# Links Tags to various other taggable models via a
# polymorphic association
class TagLink < ActiveRecord::Base
  belongs_to :taggable, polymorphic: true
  belongs_to :tag

  validates :tag, presence: true
  validates :taggable_id, :taggable_type, presence: true
end

