require "rails_helper"

RSpec.describe Site do
  it { should have_many(:accounts) }
end

