require 'rails_helper'

RSpec.describe TagLink, type: :model do
  it { should belong_to(:tag) }
  it { should belong_to(:taggable) }

  it { should validate_presence_of(:tag) }
  it { should validate_presence_of(:taggable_id) }
  it { should validate_presence_of(:taggable_type) }
end

