require 'rspec'
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
end
