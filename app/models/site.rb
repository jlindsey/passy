# Site containing accounts with passwords
class Site < ActiveRecord::Base
  has_many :accounts
end

