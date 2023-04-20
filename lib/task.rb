#file: task.rb
class Task
    def initialize(title)
        complete = false
    end

    def title
        return @title
    end

    def mark_complete
        @complete = true
    end

    def complete?
        return @complete
    end
end