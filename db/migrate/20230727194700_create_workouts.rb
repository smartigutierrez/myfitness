class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :exercise1
      t.string :exercise2
      t.string :exercise3
      t.string :exercise4
      t.string :exercise5
      t.string :exercise6            
      t.timestamps
    end
  end
end
