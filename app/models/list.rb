class List < ActiveRecord::Base
  has_many :tasks

  def add(text)
    tasks << Task.create(content: text)
  end

  def delete(task_id)
    task = tasks.find(task_id).destroy
    tasks.delete(task)
    task # return the task
  end
end


# class List
#   def initialize
#     @tasks = []
#   end

#   def add
#     @tasks << Task.new(:content => "AAHHH!!!")
#   end
# end

# class Task
#   def initialize(args)
#     @content = args[:content]
#   end
# end
