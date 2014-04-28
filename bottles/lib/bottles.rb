class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
    <<-VERSE
#{quantize(num).capitalize} #{bottle_plural(num)} on the wall, #{quantize num} #{bottle_plural(num)}.
#{what_now(num).capitalize}, #{quantize num-1} #{bottle_plural num-1} on the wall.
VERSE
  end
  
  def bottle_plural(num)
    ((num == 1) ? "bottle" : "bottles") + " of beer"
  end

  def quantize(num)
    num = num % 100
    (num == 0) ? "no more" : num.to_s
  end

  def what_now(num)
    case num
    when 0
      "Go to the store and buy some more"
    when 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end
end
