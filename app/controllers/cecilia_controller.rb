class CeciliaController < ApplicationController
  def homepage
    render(template: "roll_template/homepage")
  end

  def dynamic_roll
    @num_dice = params.fetch("number_rolls").to_i
    @num_sides = params.fetch("number_sides").to_i

    @rolls = []
    @num_dice.times do
      die = rand(1..@num_sides)
      @rolls.push(die)
    end
    render(template: "roll_template/dynamic")
  end

end
