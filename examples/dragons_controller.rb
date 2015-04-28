require_relative 'setup'
require_relative 'exhaler'
require 'pry'

class DragonsController

  def has_run
    false
  end

  def exhale(dragon, rider, given_words)
    if !given_words.empty?
      dragon.say given_words
    elsif rider && rider.created_at <= (Time.now - 7*24*3600) && dragon.weight && dragon.weight >= 10000
      dragon.say 'We can crush anything!!'
    elsif
    # When rider is over a week old, then when dragon spits fire
    rider && rider.created_at <= (Time.now - 7*24*3600)
      dragon.say 'Eat Flames!!'
    else
      if rider && rider.created_at > (Time.now - 7*24*3600)
        dragon.say 'Bummer. No flames, just smoke.'
      end
    end
  end
end


# I. Refactoring Goals
  # A. Nicer to your future self
  # B. Nicer to your team
    # 1. More readable code
    # 2. Less entangled code (fewer fingers on same code)
    # 3. More flexible to change
    # 4. Fewer merge conflicts
  # C. Get a job
    # 1. Other developers want to work with you
    # 2. Shows a careful developer
    # 3. Makes it easier to read clean code