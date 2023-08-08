class Workout < ApplicationRecord
    validates :name, presence: true
    validates :date, presence: true
    has_many :exercises
end
