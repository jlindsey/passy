require "rails_helper"

RSpec.describe Ability do
  let(:user) { nil }
  let(:subject) { Ability.new user }

  context "unauthenticated user" do
    %i[manage create read update destroy].each do |verb|
      %w[Account Password User Site AccountUserPermission].each do |model|
        it { should_not be_able_to(verb, model.constantize.new) }
      end
    end
  end
end

