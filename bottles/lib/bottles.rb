require 'forwardable'

class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
    Verse.new(num).to_s
  end
end

class Verse
  extend Forwardable
  
  def_delegators :@variant, :current_quantity, :current_container, :action, :remaining_quantity, :remaining_container
  attr_reader :num, :variant

  def initialize(num)
    @num = num
    @variant = verse_variant
  end

  def to_s
    "#{current_quantity.capitalize} #{current_container} of beer on the wall, " +
    "#{current_quantity} #{current_container} of beer.\n" +
    "#{action}, " +
    "#{remaining_quantity} #{remaining_container} of beer on the wall.\n"
  end

  private

  def verse_variant
    begin
      Object.const_get("Variant#{num}")
    rescue
      Variant
    end.new(num)
  end
end

class Variant
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def current_quantity
    num.to_s
  end

  def remaining_quantity
    (num - 1).to_s
  end

  def current_container
    'bottles'
  end

  def remaining_container
    'bottles'
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  private

  def pronoun
    'one'
  end
end

class Variant0 < Variant
  def current_quantity
    'no more'
  end

  def remaining_quantity
    99.to_s
  end

  def action
    "Go to the store and buy some more"
  end
end

class Variant1 < Variant
  def current_container
    'bottle'
  end

  def remaining_quantity
    'no more'
  end

  private

  def pronoun
    'it'
  end
end

class Variant2 < Variant
  def remaining_container
    'bottle'
  end
end

class Variant6 < Variant
  def current_container
    'six-pack'
  end

  def current_quantity
    1.to_s
  end

  private
  
  def pronoun
    'one'
  end  
end

class Variant7 < Variant
  def remaining_quantity
    1.to_s
  end

  def remaining_container
    'six-pack'
  end
end
