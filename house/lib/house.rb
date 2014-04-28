class House

  def things
    [
      "horse and the hound and the horn that belonged to",
      "farmer sowing his corn that kept",
      "rooster that crowed in the morn that woke",
      "priest all shaven and shorn that married",
      "man all tattered and torn that kissed",
      "maiden all forlorn that milked",
      "cow with the crumpled horn that tossed",
      "dog that worried",
      "cat that killed",
      "rat that ate",
      "malt that lay in",
      "house that Jack built"
    ]
  end
  
  def line(num)
    nested_things = things.last(num).map {|x| "the #{x}"}.join(" ")
    "This is #{nested_things}.\n"
  end

  def recite
    1.upto(things.count).map {|x| line(x)}.join("\n")
  end
end
