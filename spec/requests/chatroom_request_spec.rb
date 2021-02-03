require 'rails_helper'

RSpec.describe "Chatrooms", type: :request do
  it "route root path to chatroom#index" do
    get "/"
    expect(response).to render_template :index
  end
end
