require 'rspec'
require 'date'
require_relative 'task'

describe Task do
  it "should create an object with class Task" do
    expect{Task.new("Title")}.to_not raise_error
  end

  it "should give task a title, and the title can be retrieved" do
    my_task = Task.new("Title")
    expect(my_task.get_title).to eq "Title"
  end

  it "should give task a description, and the description can be retrieved" do
    my_task = Task.new("Title")
    expect(my_task.give_description("Task description")).to eq "Task description"
  end

  it "should print labels and values associated with a task" do
    my_task = Task.new("Buy Groceries")
    my_task.add_task_details("Bananas",5)
    expect(my_task.get_task_details["Bananas"]).to eq 5
    expect(my_task.get_task_details).to eq "Bananas"=>5
    my_task.add_task_details("Milk", 1)
    expect(my_task.get_task_details["Milk"]).to eq 1
    expect(my_task.get_task_details).to eq "Bananas"=>5, "Milk"=>1
  end

  it "should mark a task as done" do
    my_task = Task.new("Title")
    expect(my_task.mark_task_finished).to eq true
  end

  it "should tell you if a task is complete or not" do
    my_task = Task.new("Title")
    my_task.mark_task_finished
    expect(my_task.get_task_status).to eq true
  end

  it "should create a task with a due date" do
    my_task = Task.new("Title")
    my_task.add_due_date(2016, 12, 12)
    expect(my_task.show_date_string).to eq "2016-12-12"
  end

  it "should change the task's due date" do
    my_task = Task.new("Title")
    my_task.add_due_date(2016, 12, 12)
    my_task.change_due_date(2016, 12, 25)
    expect(my_task.show_date_string).to eq "2016-12-25"
  end

  it "should print the task with its due date, description and details" do
    my_task = Task.new("Groceries")
    my_task.give_description("Go to Whole Foods")
    my_task.add_task_details("Bananas",5)
    my_task.add_task_details("Milk",1)
    my_task.add_due_date(2016, 12, 12)
    expect(my_task).to eq my_task
  end
end
