class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :exercise1
      t.string :exercise2
      t.string :exercise3

      t.timestamps
    end
  end
end
