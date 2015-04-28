require 'pry'
class Exhaler 
	attr_accessor 

	def initialize()
	end
	
end


# II. Refactoring Process
	# A. Move big method code to new object
		# 1. Create a class with same initialization arguments as BIGMETHOD's arguments 
	   		# a. (and initialize with other dependencies)
	   		# b. create accessors to these dependencies 
		# 2. Copy & paste the method's body in the new class, with no arguments
		# 3. Replace original method with a call to the new class
	    	# a. Change calls of self to the respective class
	    

	# B. Identify messy code
		# 1. Not dry
		# 2. Different level of abstraction (ie. not in the summary of the method)
		# 3. Complex calculations
	# C. Write intention revealing code
		# 1. write a comment that describes the method
		# 2. create a method inspired by that comment
		# 3. Wrap the relevant logic in the new method
		# 4. Instead of directly calling the logic, call the method instead




		
# III. TLDR
	# A. Methods less than five lines long
	# B. Objects less than 100 lines long

  # Additional Resources (and inspiration from): 
  	# Practical Object Oriented Programing Sandi Metz - (the bible to clean code)
    # https://www.youtube.com/watch?v=ozWzehOEeuI Tute - Rails Conf 2014
    # https://www.youtube.com/watch?v=J4dlF0kcThQ - Katrina Owens Cascadia Ruby
    # http://www.refactoring.com/catalog/replaceMethodWithMethodObject.html - Martin Fowler

