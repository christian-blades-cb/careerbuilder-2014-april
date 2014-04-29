require_relative './stanza_one'
require_relative './stanza_two'

class Verse
  attr_reader :num

  def initialize(num)
    @num = num
  end
  
  def verse    
    stanza_one + stanza_two
  end

  private
  
  def stanza_one
    StanzaOne.new(num).stanza
  end

  def stanza_two
    StanzaTwo.new(num).stanza
  end
  
end
