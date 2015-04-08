# Main user class
class User < ActiveRecord::Base
  has_many :account_user_permissions
  has_many :accounts, through: :account_user_permissions

  validates :email, :name, presence: true

  authenticates_with_sorcery!
  has_paper_trail

  def admin?
    self.admin == true
  end
end

