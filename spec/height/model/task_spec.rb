RSpec.describe Height::Model::Task do
  subject(:task) { Height::Model::Task.new(attrs) }
  let(:attrs) { { 'id' => '659ac012-9239-46f4-9cf5-6a0f382d5384' } }

  describe '#update' do

    it 'is successful' do
      VCR.use_cassette('update_task') do
        updated_task = task.update('status' => 'inProgress')

        expect(updated_task.status).to eq('inProgress')
      end
    end
  end
end
