require 'rails_helper'

RSpec.describe "People", type: :request do
  describe "GET /index" do
    it "returns a success response" do
      get api_v1_people_index_path
      expect(response).to be_successful
    end
  end
end
