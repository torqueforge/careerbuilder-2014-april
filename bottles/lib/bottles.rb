class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
    "#{quantity(num).capitalize} #{container(num)} of beer on the wall, " +
    "#{quantity(num)} #{container(num)} of beer.\n" +
    "#{action(num)}, " +
    "#{quantity(num-1)} #{container(num-1)} of beer on the wall.\n"
  end

  private

  def quantity(num)
    case num
    when -1
      99.to_s
    when 0
      'no more'
    else
      num.to_s
    end
  end

  def container(num)
    case num
    when 1
      'bottle'
    else
      'bottles'
    end
  end

  def action(num)
    case num
    when 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(num)} down and pass it around"
    end
  end

  def pronoun(num)
    case num
    when 1
      'it'
    else
      'one'
    end
  end
end
