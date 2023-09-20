class FitnesGoals < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :goals, :text
  end
end
