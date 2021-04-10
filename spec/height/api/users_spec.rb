RSpec.describe Height::API::Users do
  describe '.list' do
    it 'is successful' do
      VCR.use_cassette('users') do
        height = Height.new
        lists = height.users.list

        expect(lists).to be_a(Height::ListResponse)
        expect(lists).not_to be_empty
        expect(lists.count).to eq(3)
        expect(lists.items[1]).to be_a(Height::Model::User)
        expect(lists.items[1].username).to eq('mauro')
      end
    end
  end
end
