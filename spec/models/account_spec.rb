require "rails_helper"

RSpec.describe Account do
  it { should belong_to(:site) }
  it { should have_many(:passwords) }
  it { should have_one(:current_password) }
  it { should have_many(:tag_links).dependent(:destroy) }
  it { should have_many(:tags).through(:tag_links) }

  it { should validate_presence_of(:site) }
  it { should validate_presence_of(:username) }
end

