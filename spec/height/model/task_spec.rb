RSpec.describe Height::Model::Task do
  subject(:task) { Height::Model::Task.new(attrs) }
  let(:attrs) { { 'id' => '659ac012-9239-46f4-9cf5-6a0f382d5384' } }

  describe '#comments' do
    it 'is successful' do
      VCR.use_cassette('activities') do
        comments = task.comments

        expect(comments).not_to be_empty
        expect(comments.count).to eq(1)
        expect(comments.first.id).to eq('45ee350a-39d8-4f69-b6bd-8cb0e6c62682')
        expect(comments.first.message).to eq("The API should be `list.tasks`")
      end
    end
  end

  describe '#update' do
    it 'is successful' do
      VCR.use_cassette('update_task') do
        updated_task = task.update('status' => 'inProgress')

        expect(updated_task.status).to eq('inProgress')
      end
    end
  end
end
