class AddDateToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :date, :string
  end
end
