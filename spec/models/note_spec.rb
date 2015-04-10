require "rails_helper"

RSpec.describe Note do
  it { should belong_to(:notable) }
  it { should validate_presence_of(:body) }
  it { should have_many(:tag_links).dependent(:destroy) }
  it { should have_many(:tags).through(:tag_links) }
end

