require "rails_helper"

RSpec.describe Site do
  it { should have_many(:accounts) }
  it { should have_many(:notes).dependent(:destroy) }
  it { should have_many(:tag_links).dependent(:destroy) }
  it { should have_many(:tags).through(:tag_links) }

  it { should validate_presence_of(:name) }
end

