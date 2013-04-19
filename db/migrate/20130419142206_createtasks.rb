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
