require 'rails_helper'

RSpec.describe User do
  it "works" do
    expect(create(:user)).to be_persisted
  end
end
