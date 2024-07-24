require_relative 'task'

class TaskManager
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
    puts "Task added successfully!"
  end

  def list_tasks
    if @tasks.empty?
      puts "No tasks available."
    else
      @tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
    end
  end

  def update_task(index, updated_task)
    if index.between?(0, @tasks.length - 1)
      @tasks[index] = updated_task
      puts "Task updated successfully!"
    else
      puts "Invalid task number!"
    end
  end

  def remove_task(index)
    if index.between?(0, @tasks.length - 1)
      @tasks.delete_at(index)
      puts "Task removed successfully!"
    else
      puts "Invalid task number!"
    end
  end
end
