RSpec.describe Height::Model::List do
  subject(:list) { Height::Model::List.new(attrs) }
  let(:attrs) { { 'id' => '113fcfa8-e37a-4077-81a0-8ac423debd13' } }

  describe '#tasks' do

    it 'is successful' do
      VCR.use_cassette('tasks') do
        tasks = list.tasks

        expect(tasks).to be_a(Height::ListResponse)
        expect(tasks).not_to be_empty
        expect(tasks.count).to eq(3)
        expect(tasks.first.id).to eq('f791680d-66ee-434a-8d4e-519c6f12181d')
      end
    end
  end
end
