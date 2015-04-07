require "rails_helper"

RSpec.describe Password do
  it { should belong_to(:account) }
end

