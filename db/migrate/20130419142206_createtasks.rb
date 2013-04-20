class Createtasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.boolean :completed, :default => false
      t.references :list
      t.timestamps
    end
  end
end

# tasks.find_by_list_id(2).deletetasks.find_by_list_id(2).delete
