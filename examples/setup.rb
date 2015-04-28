class Rider
  attr_accessor :created_at

  def initialize(options = {})
    options.each { |k, v| send("#{k}=", v) }
  end
end



class Dragon
  attr_accessor :rider, :words, :weight, :say

  def say(words)
    @words = words
  end

  def initialize(options = {})
    options.each { |k, v| send("#{k}=", v) }
  end
end