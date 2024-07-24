class Task
  attr_accessor :title, :description, :status, :due_date

  def initialize(title, description, status, due_date)
    @title = title
    @description = description
    @status = status
    @due_date = due_date
  end

  def to_s
    "Title: #{@title}, Description: #{@description}, Status: #{@status}, Due Date: #{@due_date}"
  end
end
