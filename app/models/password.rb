# Single password for an account
class Password < ActiveRecord::Base
  belongs_to :account
end

