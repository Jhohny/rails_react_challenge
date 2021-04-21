RSpec.describe "FrequencyChars", type: :request do
  let(:people) { HashWithIndifferentAccess.new build(:people_successful)[:body] }

  describe "GET /index" do
    before { allow_any_instance_of(Rest::Salesloft::Client).to receive(:get_people).and_return(people) }

    it "returns a success response" do
      get api_v1_frequency_chars_index_path
      expect(response).to be_successful
    end
  end
end
