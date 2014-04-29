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
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def to_s
    "#{current_quantity.capitalize} #{current_container} of beer on the wall, " +
    "#{current_quantity} #{current_container} of beer.\n" +
    "#{action}, " +
    "#{remaining_quantity} #{remaining_container} of beer on the wall.\n"
  end

  private

  def current_quantity
    case num
    when 0
      'no more'
    else
      num.to_s
    end
  end

  def remaining_quantity
    case num
    when 0
      99.to_s
    when 1
      'no more'
    else
      (num - 1).to_s
    end
  end

  def current_container
    case num
    when 1
      'bottle'
    else
      'bottles'
    end
  end

  def remaining_container
    case num
    when 2
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
