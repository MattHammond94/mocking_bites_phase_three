
require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  it 'Should return a list of all tasks after multiple adds' do
    task_list = TaskList.new
    task = :one
    task_1 = :two
    task_2 = :three
    task_list.add(task)
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task, task_1, task_2]
  end

  it "returns true if all tasks are complete" do
    task_list = TaskList.new
    complete_task = double(:task, complete?: true)
    complete_task_1 = double(:task, complete?: true)
    complete_task_2 = double(:task, complete?: true)
    task_list.add(complete_task)
    task_list.add(complete_task_1)
    task_list.add(complete_task_2)
    expect(task_list.all_complete?).to eq true
  end

  it 'Should return false when one task has not been marked as complete' do
    task_list = TaskList.new
    complete_task = double :task, complete?: true
    complete_task_1 = double :task, complete?: false
    complete_task_2 = double :task, complete?: true
    task_list.add(complete_task)
    task_list.add(complete_task_1)
    task_list.add(complete_task_2)
    expect(task_list.all_complete?).to eq false
  end
end