module ApplicationHelper
  def options_for_weight_dropdown
    (0..200).step(2.5).map { |weight| ["#{weight} kgs", weight] }
  end

  def options_for_sets_dropdown
    (0..10).map { |sets| [sets.to_s, sets] }
  end

  def options_for_repetitions_dropdown
    (0..20).map { |reps| [reps.to_s, reps] }
  end

  def options_for_cardio_duration
    start_time = Time.parse('00:00') # Starting time at midnight
    duration_in_minutes = (5..120).step(5)
    duration_in_minutes.map do |duration|
      display_time = start_time + duration * 60 # Convert minutes to seconds
      ["#{display_time.strftime('%H:%M')} (#{duration} mins)", duration]
    end
  end

  def user_weight
    (0..150).step(0.5).map { |weight| ["#{weight} kgs", weight] }
  end

  def user_height
    (100..220).step(1).map { |height| ["#{height} cm", height] }
  end

def user_avatar(user, size = 15)
  avatar = user.avatar if user.avatar.attached?

  image_tag(avatar.presence || "avatar.jpg", size: "#{size}x#{size}!")
end

end
