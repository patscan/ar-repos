class List < ActiveRecord::Base
  has_many :tasks

  def add(text)
    tasks << Task.create(content: text)
  end


end

