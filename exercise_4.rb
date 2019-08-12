require 'pry'
class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble_by(method)
    method.method(@contents, :+)
  end

  def unscramble_by(method)
    method.method(@contents, :-)
  end
end

class Reversing
  def initialize
  end
  def method(contents, *arg)
    contents.reverse
  end
end

class MovingChars
  def initialize(steps)
    @steps = steps
  end
  def method(contents, operator)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord.send(operator, @steps)).chr
    end
    contents = scrambled_chars.join
  end
end
binding.pry
