class Bottles
  def verse(num)
    case num
    when 0
      <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, #{pluraled_bottle(99)} of beer on the wall.
VERSE
    when 1
      <<-VERSE
#{pluraled_bottle(num)} of beer on the wall, #{pluraled_bottle(num)} of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
    else
      <<-VERSE
#{pluraled_bottle(num)} of beer on the wall, #{pluraled_bottle(num)} of beer.
Take one down and pass it around, #{pluraled_bottle(num - 1)} of beer on the wall.
VERSE
    end
  end

  def pluraled_bottle(num)
    num > 1 ? "#{num} bottles" : "#{num} bottle"
  end

  def verses(start, finish)
    start.downto(finish).map {|i| verse(i)}.join("\n")
  end

  def song
    verses(99, 0)
  end
end
