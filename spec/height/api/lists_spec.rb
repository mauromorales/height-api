RSpec.describe Height::API::Lists do
  describe '.list' do
    it 'is successful' do
      VCR.use_cassette('lists') do
        height = Height.new
        lists = height.lists.list

        expect(lists).to be_a(Height::ListResponse)
        expect(lists).not_to be_empty
        expect(lists.count).to eq(7)
        expect(lists.first).to be_a(Height::Model::List)
        expect(lists.first.id).to eq('f8ef1fbe-5f2c-4718-8751-ba17984e077f')
      end
    end
  end
end
