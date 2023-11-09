class ZebraController < ApplicationController
  def hp
    render template: "dice_template/hp"
  end

  def two_six
    @rolls = []

    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end

    render template: "dice_template/two_six"
  end

  def two_ten
    @rolls = []

    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end

    render template: "dice_template/two_ten"
  end

  def one_twenty
    @rolls = []

    1.times do
      die = rand(1..20)
      @rolls.push(die)
    end

    render template: "dice_template/one_twenty"
  end

  def five_four
    @rolls = []

    5.times do
      die = rand(1..4)
      @rolls.push(die)
    end

    render template: "dice_template/five_four"
  end

  def random
    @num1 = params.fetch("n1").to_i
    @num2 = params.fetch("n2").to_i

    @rolls = []
       @num1.times do
      die = rand(1..@num2)
      @rolls.push(die)
    end
    render template: "dice_template/random"
  end
end
