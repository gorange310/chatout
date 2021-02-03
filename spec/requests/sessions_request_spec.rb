require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  it "route login to session#new" do
    get "/login"
    expect(response).to render_template :new
  end
end
