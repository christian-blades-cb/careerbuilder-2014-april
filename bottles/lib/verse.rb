class Verse
  attr_reader :num

  def initialize(num)
    @num = num
  end
  
  def verse
    "#{quantity(num).capitalize} #{container(num)} of beer on the wall, " +
    "#{quantity(num)} #{container(num)} of beer.\n" +
    "#{action}, " +
    "#{quantity(num-1)} #{container(num-1)} of beer on the wall.\n"
  end

  private

  def quantity(mynum)
    case mynum
    when -1
      99.to_s
    when 0
      'no more'
    else
      mynum.to_s
    end
  end

  def container(mynum)
    case mynum
    when 1
      'bottle'
    else
      'bottles'
    end
  end

  def action
    case num
    when 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def pronoun
    case num
    when 1
      'it'
    else
      'one'
    end
  end
end
