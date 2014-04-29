class StanzaOne
  attr_reader :num
  
  def initialize(num)
    @num = num
  end

  def stanza
    "#{quantity.capitalize} #{container} of beer on the wall, " +
    "#{quantity} #{container} of beer.\n"
  end

  private

  def quantity
    case num
    when -1
      99.to_s
    when 0
      'no more'
    else
      num.to_s
    end
  end

  def container
    case num
    when 1
      'bottle'
    else
      'bottles'
    end
  end
end
