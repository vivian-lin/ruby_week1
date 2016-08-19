require 'date'

class Task

  def initialize(title)
    #Initializes the task object with a title
    @task_title = title
    #Initializes the task object with empty hash table (will eventually contain task details)
    @task_details = Hash.new
    #Initializes the task object as incomplete (false)
    @task_finished = false
  end

  #Retrieve the title of the task object
  def get_title
    @task_title
  end

  #Give the task object a description
  def give_description(description)
    @task_description = description
  end

  #Add details to the task object in key=>value form
  def add_task_details(title, description)
    @task_details[title] = description
  end

  #Retrieve details from the task object
  def get_task_details
    @task_details
  end

  #Mark the task as finished (true)
  def mark_task_finished
    @task_finished = true
  end

  #Retrieves the task status (true = completed, false = incomplete)
  def get_task_status
    if @task_finished == true
      p "Your task is done!"
    else
      p "Your task is incomplete."
    end
    @task_finished
  end

  #Add a date object to the task object
  def add_due_date(year, month, day)
    @due_date = Date.new(year, month, day)
  end

  #Shows the date object in "####-##-##" format
  def show_date_string
    @due_date.strftime("%F")
  end

  #Changes the due date only if new date does not equal old date
  def change_due_date(year, month, day)
    if @due_date.year == year && @due_date.month == month && @due_date.day == day
      return @due_date
    else
      @due_date = Date.new(year, month, day)
    end
  end

  #Retrieves date object
  def get_due_date
    @due_date
  end

end
