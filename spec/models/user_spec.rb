require "rails_helper"

RSpec.describe User do
  it { should have_many(:account_user_permissions) }
  it { should have_many(:accounts).through(:account_user_permissions) }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:name) }
end

