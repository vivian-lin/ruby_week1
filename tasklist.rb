require 'date'
require_relative 'task'

class TaskList

  def initialize
    #Initializes empty array @tasks to hold task objects without due dates
    @tasks = []
    #Initializes empty array @tasks_with_due_date to hold task objects with due dates
    @tasks_with_due_date = []
  end

  #Shovels task objects w/o DD into @tasks array
  def add_to_tasklist(task)
    @tasks << task
  end

  #Shovels task objects w/ DD into @tasks_with_due_date array
  def add_tasks_with_DD_to_tasklist(task)
    @tasks_with_due_date << task
  end

  #Returns array w/ all the completed tasks w/o DD
  def get_completed_tasks
    @tasks.find_all{|i| i.get_task_status == true}
  end

  #Returns array w/ all incompleted tasks w/o DD
  def get_incompleted_tasks
    @tasks.find_all{|i| i.get_task_status == false}
  end

  #Retrieves array @tasks_with_due_date
  def get_tasks_with_due_dates
    @tasks_with_due_date
  end

  #Retrieves array @tasks
  def get_tasks
    @tasks
  end

  #Returns array w/ all completed task objects with a DD
  def get_completed_tasks_with_DD
    @tasks_with_due_date.find_all{|i| i.get_task_status == true}
  end

  #Returns array w/ all incompleted task objects with a DD
  def get_incompleted_tasks_with_DD
    @incompleted_tasks =  @tasks_with_due_date.find_all{|i| i.get_task_status == false}
  end

  #Returns array w/ all incompleted task objects with a DD that are due today
  def find_tasks_due_today
    @incompleted_tasks.find_all{|i| i.get_due_date == Date.today}
  end

  #Returns sorted array w/ all incompleted task objects w/ DD
  def sort_incompleted_tasks_with_DD
    @sorted_incompleted_tasks = @incompleted_tasks.sort do
      |x,y| x.get_due_date <=> y.get_due_date
    end
  end

  #Returns sorted, incomplete, DD task objects and all task objects w/o DD
  def return_all_incompleted_tasks
    @sorted_incompleted_tasks + @tasks
  end

end
