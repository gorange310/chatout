require 'rails_helper'

RSpec.describe Message, type: :model do
  it "username should be present" do
    message = Message.new(text: "")
    expect(message).not_to be_valid
  end
end
