require 'pry'
class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble_by_advancing_chars(steps)
    advancing_chars(steps)
  end

  def unscramble_by_advancing_chars(steps)
    advancing_chars(-steps)
  end

  def advancing_chars(steps)
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + steps).chr
    end
    @contents = scrambled_chars.join
  end

  def scramble_by_reversing
    @contents = @contents.reverse
  end
  alias unscramble_by_reversing scramble_by_reversing

end
binding.pry
