class AddCardioToWorkoutAndTime < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :cardio, :string
    add_column :workouts, :round_time, :string
    add_column :workouts, :cardio_sets, :integer
  end
end
