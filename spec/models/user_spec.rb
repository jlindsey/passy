require "rails_helper"

RSpec.describe User do
  it { should have_many(:account_user_permissions) }
  it { should have_many(:accounts).through(:account_user_permissions) }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:name) }

  it { should be_versioned }

  it "defines an idiomatic method for the admin flag" do
    expect(subject).to respond_to(:admin?)
    subject.admin = true
    expect(subject.admin?).to be true
  end
end

