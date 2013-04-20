class Task < ActiveRecord::Base
  belongs_to :list

  attr_accessible :completed

  def checkoff
    # completed = true
    self[:completed] = true
    # t = Task.find_by_id(self.id)


    Task.update(self[:id], :completed => true )

  end

  def to_s
    completed == true ? completed = "[X]" : completed = "[ ]"
    "#{id}. #{content} #{completed}"
  end
end
