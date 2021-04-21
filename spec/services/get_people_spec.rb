RSpec.describe GetPeople do
  let(:service)  { described_class.new }
  let(:base_url) { Settings.salesloft.url }
  let(:response) { build(:people_successful) }
  let(:path)     { Settings.salesloft.people_path }
  let(:headers)  { { 'Authorization' => "Bearer #{Settings.salesloft.token}" } }

  let(:people) do
    GetPeople::Person.new(
      full_name: 'Steven Pease',
      email: 'sakatius@gmail.com',
      job_title: 'Software Engineer'
    )
  end

  before do
    stub_request(:get, base_url + path)
      .with(
        headers: headers
      ).to_return(status: 200, body: response['body'].to_json)
  end

  context 'when it is successful' do
    it '#call' do
      expect(service.call).to eq([people])
    end
  end
end
