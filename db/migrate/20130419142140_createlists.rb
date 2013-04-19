class Createlists < ActiveRecord::Migration
  def change
     create_table :lists do |t|
      t.string :t
      t.timestamps
    end
  end
end
