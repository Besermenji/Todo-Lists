class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.date :due_date
      t.string :title
      t.text :description
      t.boolean :completed, default: false
      t.belongs_to :todo_list, index: true


      t.timestamps null: false
    end
  end
end
