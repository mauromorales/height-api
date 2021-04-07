RSpec.describe Height::API::Tasks do
  describe '.find' do
    context 'by index' do
      it 'is successful' do
        VCR.use_cassette('task_by_index') do
          height = Height.new
          task = height.tasks.get(2)

          expect(task).to be_a(Height::Model::Task)
          expect(task.id).to eq('659ac012-9239-46f4-9cf5-6a0f382d5384')
          expect(task.index).to eq(2)
          expect(task.name).to eq('Fetch tasks in list')
        end
      end
    end

    context 'by id' do
      it 'is successful' do
        VCR.use_cassette('task_by_id') do
          height = Height.new
          task = height.tasks.get('659ac012-9239-46f4-9cf5-6a0f382d5384')

          expect(task).to be_a(Height::Model::Task)
          expect(task.id).to eq('659ac012-9239-46f4-9cf5-6a0f382d5384')
          expect(task.index).to eq(2)
          expect(task.name).to eq('Fetch tasks in list')
        end
      end
    end
  end
end
