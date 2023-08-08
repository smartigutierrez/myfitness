module ApplicationHelper
  def options_for_weight_dropdown
    (0..200).step(2.5).map { |weight| ["#{weight} kgs", weight] }
  end

  def options_for_sets_dropdown
    (1..10).map { |sets| [sets.to_s, sets] }
  end

  def options_for_repetitions_dropdown
    (1..20).map { |reps| [reps.to_s, reps] }
  end
end
