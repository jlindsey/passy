require "rails_helper"

RSpec.describe Account do
  it { should belong_to(:site) }
  it { should have_many(:passwords) }
  it { should have_one(:current_password) }
end

