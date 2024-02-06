class DiceRollAppController < ApplicationController
  def home
    render({:template => "dice_roll_templates/home"})
  end

  def two_six
    @rolls = []

    2.times do
      die = rand(1..6)

      @rolls.push(die)
    end
    render({:template => "dice_roll_templates/two_six"})
  end

  def two_ten
    @rolls = []

    2.times do
      die = rand(1..10)

      @rolls.push(die)
    end
    render({:template => "dice_roll_templates/two_ten"})
  end

  def one_twenty
    @rolls = []

    1.times do
      die = rand(1..20)

      @rolls.push(die)
    end
    render({:template => "dice_roll_templates/one_twenty"})
  end

  def five_four
    @rolls = []

    5.times do
      die = rand(1..4)

      @rolls.push(die)
    end
    render({:template => "dice_roll_templates/five_four"})
  end

  def dynamic
    @num_rolls = params.fetch("number_of_rolls").to_i
    @num_sides = params.fetch("number_of_sides").to_i

    @rolls = []

    @num_rolls.times do
      die = rand(1..@num_sides)

      @rolls.push(die)
    end
    render({:template => "dice_roll_templates/dynamic"})
  end

end
