class Task

  def initialize(title)
    @task_title = title
    @task_details = Hash.new
    @task_finished = false
  end

  def get_title
    @task_title
  end

  def give_description(description)
    @task_description = description
  end

  def add_task_details(title, description)
    @task_details[title] = description
  end

  def get_task_details
    @task_details
  end

  def mark_task_finished
    @task_finished = true
  end

  def get_task_status
    if @task_finished == true
      p "Your task is done!"
    else
      p "Your task is incomplete."
    end
    @task_finished
  end

end
