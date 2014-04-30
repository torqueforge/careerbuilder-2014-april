require 'forwardable'

class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    Verse.new(SuitableVariant.for(number)).to_s
  end
end

class SuitableVariant
  def self.for(verse_number)
    begin
      Object.const_get("Variant#{verse_number}")
    rescue
      Variant
    end.new(verse_number)
  end
end

class Verse
  extend Forwardable

  delegate [
    :current_quantity, :current_container,
    :action,
    :remaining_quantity, :remaining_container
  ] => :variant

  attr_reader :variant

  def initialize(variant)
    @variant = variant
  end

  def to_s
    "#{current_quantity.capitalize} #{current_container} of beer on the wall, " +
    "#{current_quantity} #{current_container} of beer.\n" +
    "#{action}, " +
    "#{remaining_quantity} #{remaining_container} of beer on the wall.\n"
  end
end

class Variant
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def current_quantity
    number.to_s
  end

  def remaining_quantity
    (number - 1).to_s
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
