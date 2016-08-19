require 'rspec'
require_relative 'tasklist'
require_relative 'task'
require 'pry'

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

  it "should add tasks with due dates to an array, and tasks without due dates to another array" do
    my_tasklist = TaskList.new
    my_task = Task.new("Groceries")
    my_task.add_due_date(2016, 8, 27)
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task)
    my_task2 = Task.new("Bank")
    my_task2.add_due_date(2016, 8, 27)
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task2)
    expect(my_tasklist.get_tasks_with_due_dates).to include (my_task)

    my_task2 = Task.new("Bank")
    my_tasklist.add_to_tasklist(my_task2)
    expect(my_tasklist.get_tasks).to include (my_task2)
  end

  it "should list all of the incompleted tasks that are due today" do
    my_tasklist = TaskList.new
    my_task = Task.new("Groceries")
    my_task.add_due_date(2016, 8, 19)
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task)

    my_task2 = Task.new("Bank")
    my_task2.add_due_date(2016, 8, 19)
    my_task2.mark_task_finished
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task2)

    my_tasklist.get_incompleted_tasks_with_DD
    expect(my_tasklist.find_tasks_due_today).to match [my_task]
  end

  it "should list all the incompleted tasks in order of due date" do
    my_tasklist = TaskList.new
    my_task = Task.new("Groceries")
    my_task.add_due_date(2016, 12, 19)
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task)

    my_task2 = Task.new("Bank")
    my_task2.add_due_date(2016, 9, 30)
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task2)

    my_task3 = Task.new("Wash Dog")
    my_task3.add_due_date(2019, 9, 30)
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task3)

    my_task4 = Task.new("Wash Frog")
    my_task4.add_due_date(2018, 9, 29)
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task4)

    my_tasklist.get_incompleted_tasks_with_DD

    expect(my_tasklist.sort_incompleted_tasks_with_DD).to match "[my_task2, my_task, my_task4, my_task3]"
  end

  it "should return sorted incompleted tasks, and then all the items without due dates" do
    my_tasklist = TaskList.new
    my_task = Task.new("A")
    my_task.add_due_date(2016, 12, 12)
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task)

    my_task2 = Task.new("B")
    my_task.add_due_date(2016, 10, 10)
    my_task2.mark_task_finished
    my_tasklist.add_tasks_with_DD_to_tasklist(my_task2)

    my_task3 = Task.new("C")
    my_tasklist.add_to_tasklist(my_task3)
    
    my_task4 = Task.new("D")
    my_task4.mark_task_finished
    my_tasklist.add_to_tasklist(my_task4)

    my_tasklist.get_incompleted_tasks_with_DD

    my_tasklist.sort_incompleted_tasks_with_DD

    expect(my_tasklist.return_all_incompleted_tasks).to match [my_task, my_task3, my_task4]
  end
end
