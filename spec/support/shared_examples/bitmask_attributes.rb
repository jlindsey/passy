# Shared examples for testing bitmapped attributes
RSpec.shared_examples "having bitmask attributes" do
  it "defines an integer column for the bitmask field" do
    col = described_class.column_for_attribute(attribute_field)
    expect(col.type).to eq(:integer)
  end

  it "defines the field as a bitmask" do
    field = subject.__send__(attribute_field)
    expect(field).to be_a(BitmaskAttributes::ValueProxy)
    expect(described_class).to respond_to(:"values_for_#{attribute_field}")
  end
end

