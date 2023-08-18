class PagesController < ApplicationController
  def home
  end

  def index
  end

  def about
  end

  def calendar
    @workouts = Workout.all
  end
end
