class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  default_scope do 
	  order('due_date ASC')
  end

  def self.count_todo_items
    TodoItem.where(completed: true).length
  end
end
