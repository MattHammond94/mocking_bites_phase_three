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
  end
end