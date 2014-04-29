class Verse
  attr_reader :num

  def initialize(num)
    @num = num
  end
  
  def verse
    "#{quantity.capitalize} #{container} of beer on the wall, " +
    "#{quantity} #{container} of beer.\n" +
    "#{action}, " +
    "#{remaining_quantity} #{remaining_container} of beer on the wall.\n"
  end

  private

  def remaining_quantity
    case(num - 1)
    when -1
      99.to_s
    when 0
      'no more'
    else
      (num-1).to_s
    end
  end
  
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

  def remaining_container    
    case(num - 1)
    when 1
      'bottle'
    else
      'bottles'
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
