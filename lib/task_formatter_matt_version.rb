class TaskFormatter
  def initialize(task)
    @task = task
  end

  def format
    if @task.complete? == true
      "- [X] #{@task.title}"
    else
      "- [ ] #{@task.title}"
    end
    # Returns the task formatted as a string.
    # If the task is not complete, the format is:
    # - [ ] Task title
    # If the task is complete, the format is:
    # - [x] Task title
  end
end