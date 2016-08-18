require 'rspec'
require_relative 'tasklist'
require_relative 'task'

describe TaskList do
  it "should create a new task list with class TaskList" do
    expect{TaskList.new}.to_not raise_error
  end

  it "should add tasks to a task list" do
    my_task = Task.new("Buy Groceries")
    my_task.add_task_details("Task Title", "Buy Groceries")
    my_task.add_task_details("Bananas",5)
    my_tasklist = TaskList.new
    expect(my_tasklist.add_to_tasklist(my_task)).to match [my_task]

    my_task2 = Task.new("Go to Bank")
    my_task2.add_task_details("Task Title", "Go to Bank")
    my_task2.add_task_details("Deposit", 100)
    expect(my_tasklist.add_to_tasklist(my_task2)).to match [my_task, my_task2]
  end

  it "should show all the completed tasks in the task list" do
    my_task = Task.new("Buy Groceries")
    my_task.mark_task_finished
    my_tasklist = TaskList.new
    my_tasklist.add_to_tasklist(my_task)
    expect(my_tasklist.get_completed_tasks).to match [my_task]
  end

  it "should show all the incompleted tasks in the task list" do
    my_task = Task.new("Buy Groceries")
    my_task.mark_task_finished

    my_task2 = Task.new("Wash the Dog")

    my_tasklist = TaskList.new

    my_tasklist.add_to_tasklist(my_task)
    my_tasklist.add_to_tasklist(my_task2)
    
    expect(my_tasklist.get_incompleted_tasks).to match [my_task2]
  end
end
