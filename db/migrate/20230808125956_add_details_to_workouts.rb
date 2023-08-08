class AddDetailsToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :exercise1_weight, :float
    add_column :workouts, :exercise1_reps, :integer
    add_column :workouts, :exercise1_sets, :integer
    add_column :workouts, :exercise2_weight, :float
    add_column :workouts, :exercise2_reps, :integer
    add_column :workouts, :exercise2_sets, :integer
    add_column :workouts, :exercise3_weight, :float
    add_column :workouts, :exercise3_reps, :integer
    add_column :workouts, :exercise3_sets, :integer
    add_column :workouts, :exercise4_weight, :float
    add_column :workouts, :exercise4_reps, :integer
    add_column :workouts, :exercise4_sets, :integer
    add_column :workouts, :exercise5_weight, :float
    add_column :workouts, :exercise5_reps, :integer
    add_column :workouts, :exercise5_sets, :integer
    add_column :workouts, :exercise6_weight, :float
    add_column :workouts, :exercise6_reps, :integer
    add_column :workouts, :exercise6_sets, :integer
  end
end
