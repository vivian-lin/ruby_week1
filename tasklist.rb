require_relative 'task'

class TaskList

  def initialize
    @tasks = []
  end

  def add_to_tasklist(task)
    @tasks << task
  end

  def get_completed_tasks
    @completed_tasks = @tasks.find_all{|i| i.get_task_status == true}
  end

  def get_incompleted_tasks
    @incompleted_tasks = @tasks.find_all{|i| i.get_task_status == false}
  end

end
