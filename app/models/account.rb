# Single account belonging to a site
class Account < ActiveRecord::Base
  belongs_to :site
  has_many :passwords
  has_one :current_password, class: Password
end

