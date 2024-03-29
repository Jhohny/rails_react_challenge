RSpec.describe Rest::Salesloft::Client do
  let(:base_url) { Settings.salesloft.url }
  let(:client)   { described_class.new }
  let(:response) { build(:people_successful) }
  let(:path)     { Settings.salesloft.people_path }
  let(:headers)  { { 'Authorization' => "Bearer #{Settings.salesloft.token}" } }

  subject { client.get_people }

  before do
    stub_request(:get, base_url + path)
      .with(
        headers: headers
      ).to_return(status: 200, body: response['body'].to_json)
  end

  context 'when it is successful' do
    it 'returns people' do
      expect(subject[:data].first[:first_name]).to be_present
    end
  end
end
