require_relative 'task_manager'


#arayüz seçimler class oluşturulması 

task_manager = TaskManager.new

loop do 
  puts "Task Management System"
  puts "1. Add Task"
  puts "2. List Tasks"
  puts "3. Update Task"
  puts "4. Remove Task"
  puts "5. Exit"
  print "Choose an option: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter task title: "
    title = gets.chomp
    print "Enter task description: "
    description = gets.chomp
    print "Enter task status (todo, in progress, completed): "
    status = gets.chomp
    print "Enter due date: "
    due_date = gets.chomp

    task = Task.new(title, description, status, due_date)
    task_manager.add_task(task)
  when 2
    task_manager.list_tasks
  when 3
    print "Enter task number to update: "
    index = gets.chomp.to_i - 1
    print "Enter new task title: "
    title = gets.chomp
    print "Enter new task description: "
    description = gets.chomp
    print "Enter new task status (todo, in progress, completed): "
    status = gets.chomp
    print "Enter new due date: "
    due_date = gets.chomp

    update_task = Task.new(title, description, status, due_date)
    task_manager.update_task(index, update_task)
  when 4 
    print "Enter task number to remove: "
    index = gets.chomp.to_i - 1
    task_manager.remove_task(index)
  when 5 
    puts "Goodbye!"
    break
  else 
    puts "Invalid choice, please try again."
  end
end

