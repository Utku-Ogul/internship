require_relative 'task'

# tasklerin duracağı yer, task ekleme, task listeleme, güncelleme silme


class TaskManager
  def initialize
    @tasks =[]
  end

  def add_task(task)
    @tasks << task
    puts "Task added." 
  end

  def list_tasks
    if @tasks.empty?
      puts "There no available task"
    else 
      i=0
      @tasks.each do |task|
        i+=1
        puts "#{i}: #{task}"
      end
    end
  end

  def update_task(index ,update_task)
    if index.between?(0,@tasks.size)
      @tasks[index] = update_task
      puts "task updated"
    else 
      puts "invalid task number!"
    end
  end

  def remove_task(index)
    #index sileceğimiz zaman .delete_(index) kullanabiliriz
    if index.between?(0,@tasks.size)
      @tasks.delete_at(index)
      puts "task removed"
    else 
      puts "invalid task number!"
    end
  end
end


