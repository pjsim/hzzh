require 'rails_helper'

RSpec.describe "Products" do

  after(:each) do
    expect(response).to be_success
    expect(response['Content-Type']).to eql("application/json; charset=utf-8")
  end

  describe "GET /api/products" do
    it "returns all products" do
      product = FactoryGirl.create(:product)
      get '/api/products', format: 'json'
      expect(JSON.parse(response.body)).to include(JSON.parse(product.to_json(only: [:id, :title])))
    end
  end

end
