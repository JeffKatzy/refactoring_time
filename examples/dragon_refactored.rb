require_relative 'setup'
require 'pry'

class Dragon 



  def exhale
    if rider.created_at <= (Time.now - 7*24*3600) && self.weight && self.weight >= 10000
      say 'We can crush anything!!'
    elsif
    # When rider is over a week old, then when dragon spits fire
    rider && rider.created_at <= (Time.now - 7*24*3600)
      say('Eat Flames!!')
    else
      if rider && rider.created_at > (Time.now - 7*24*3600)
        say('Bummer. No flames, just smoke.')
      end
    end
  end

  def say(words)
    @words = words
  end

end



#More agenda, do the tests, dependencies, now we will get onto refactoring.


#Refactoring Definition: Refactoring small careful steps that improve the structure
  # and readability of the code without changing its behavior.  Tests are implied.

# A. Write the tests.??
  #1. Run the test to see what it should return.
  #2. If lines of code use logic, test against that logic.  (Logic means conditionals and operations)
  #3. See dependencies which show you.
    #a what the logic of your code turns on
    #b how brittle your code is (tape)
    #c what piece of the code base your code fits into
#B. Intention revealing methods
  #write a comment that describes the code
  #create a method of that summarizes the comment
  # place the code into that new method

  #a.  Look for pieces of the code at different levels of abstraction
  #b. separate out that abstraction

# 1. Method no longer than 5 lines long
#2. Class no longer than 100 lines long