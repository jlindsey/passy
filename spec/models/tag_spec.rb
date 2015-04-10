require "rails_helper"

RSpec.describe Tag, type: :model do
  it { should have_many(:tag_links).dependent(:destroy) }
  it { should have_many(:accounts).through(:tag_links).source(:taggable).class_name("Account") }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end

