# Permission join table for users -> accounts
class AccountUserPermission < ActiveRecord::Base
  belongs_to :user
  belongs_to :account

  bitmask :permissions, as: %i[view update delete]
end

