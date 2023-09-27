module WorkoutsHelper
  def compare_attributes(attribute_name, value1, value2)
    if value2.to_f > value1.to_f
      content_tag(:p, "Improved #{attribute_name}: #{value2} (Previously: #{value1})")
    elsif value2.to_f < value1.to_f
      content_tag(:p, "Decreased #{attribute_name}: #{value2} (Previously: #{value1})")
    else
      content_tag(:p, "#{attribute_name} stayed the same: #{value2}")
    end
  end
end

module ApplicationHelper
  def random_workout(workout_number)
    exercise_data = [
      { name: "Push-ups", reps: rand(5..20), sets: rand(2..4) },
      { name: "Sit-ups", reps: rand(10..30), sets: rand(2..4) },
      { name: "Squats", reps: rand(8..15), sets: rand(2..4) },
      { name: "Planks", reps: "#{rand(10..30)} seconds", sets: rand(2..4) },
      { name: "Jumping Jacks", reps: rand(20..50), sets: rand(2..4) },
      { name: "Lunges", reps: rand(8..15), sets: rand(2..4) },
      { name: "Burpees", reps: rand(5..15), sets: rand(2..4) },
      { name: "Mountain Climbers", reps: rand(20..40), sets: rand(2..4) }
    ]

    workout_name = "Workout #{workout_number}"
    workout = "<h2>#{workout_name}</h2>"

    exercise_data.each do |exercise|
      workout << "<p>#{exercise[:name]} - #{exercise[:reps]} reps (#{exercise[:sets]} sets)</p>"
    end

    workout.html_safe
  end
end
