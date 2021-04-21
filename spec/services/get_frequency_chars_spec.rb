RSpec.describe GetFrequencyChars do
  let(:service)  { described_class.new }
  let(:base_url) { Settings.salesloft.url }
  let(:response) { build(:people_successful) }
  let(:path)     { Settings.salesloft.people_path }
  let(:headers)  { { 'Authorization' => "Bearer #{Settings.salesloft.token}" } }

  let(:frequency_char) do
    {
      '.' => 1,
      '@' => 1,
      'a' => 3,
      'c' => 1,
      'g' => 1,
      'i' => 2,
      'k' => 1,
      'l' => 1,
      'm' => 2,
      'o' => 1,
      's' => 2,
      't' => 1,
      'u' => 1
    }
  end

  before do
    stub_request(:get, base_url + path)
      .with(
        headers: headers
      ).to_return(status: 200, body: response['body'].to_json)
  end

  describe '#call' do
    it 'returns frequency chars collection' do
      expect(service.call).to eq(frequency_char)
    end
  end
end
