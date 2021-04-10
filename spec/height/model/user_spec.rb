RSpec.describe Height::Model::User do
  subject(:user) { Height::Model::User.new(attrs) }
  let(:attrs) { { 'id' => 'dce0f9d3-351d-4111-9b2b-bead9b7fff4e' } }

  describe '#tasks' do

    it 'is successful' do
      VCR.use_cassette('user_tasks') do
        tasks = user.tasks

        expect(tasks).to be_a(Height::ListResponse)
        expect(tasks).not_to be_empty
        expect(tasks.count).to eq(1)
        expect(tasks.first.name).to eq('Fetch all lists')
      end
    end
  end
end
