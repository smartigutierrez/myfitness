class Exercise < ApplicationRecord
has_many :sets
has_many :reps
has_many :weights


  ALL_EXERCISES = [
    '-',
    'Pull Ups',
    'Dips',
    'Press',
    'Ring Rows',
    'Ring Pushups',
    'Ab Rollout',
    'Deadlifts',
    'Squat',
    'RDL',
    'Lunges',
    'Jump Rope'
  ].freeze
end
