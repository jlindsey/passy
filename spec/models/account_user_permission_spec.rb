require "rails_helper"
require "shared_examples/bitmask_attributes"

RSpec.describe AccountUserPermission do
  it { should belong_to(:user) }
  it { should belong_to(:account) }

  it_behaves_like "having bitmask attributes" do
    let(:attribute_field) { :permissions }
  end
end

