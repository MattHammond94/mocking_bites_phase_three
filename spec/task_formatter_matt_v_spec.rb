require 'task_formatter_matt_version'

describe TaskFormatter do
  it 'Should' do
    task = double :task, title: "Walk the dog", complete?: true
    task_2 = double :task_2, title: "Go get milk", complete?: false
    task_3 = double :task_3, title: "Get teabags", complete?: true
    formatter_1 = TaskFormatter.new(task)
    formatter_2 = TaskFormatter.new(task_2)
    formatter_3 = TaskFormatter.new(task_3)
    expect(formatter_1.format).to eq "- [X] Walk the dog"
    expect(formatter_2.format).to eq "- [ ] Go get milk"
    expect(formatter_3.format).to eq "- [X] Get teabags"
  end
end

# Further tests can be added to task_list spec to implement format behaviour on
# the task list class however am happy and comfortable with mocking usage at this stage.
 