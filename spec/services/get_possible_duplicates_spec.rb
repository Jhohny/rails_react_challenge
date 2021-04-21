RSpec.describe GetPossibleDuplicates do
  let(:service)  { described_class.new }
  let(:people) { HashWithIndifferentAccess.new build(:people_successful_duplicates)[:body] }

  before { allow_any_instance_of(Rest::Salesloft::Client).to receive(:get_people).and_return(people) }

  let(:possible_duplicates) do
    [
      { email: 'duplicate@mail.com', possible_duplicated: 'duplicat@mail.com' },
      { email: 'maybes@maxil.com', possible_duplicated: 'maybe@mail.com' }
    ]
  end

  describe '#call' do
    it 'returns correct duplicates' do
      expect(service.call).to eq(possible_duplicates)
    end
  end
end
