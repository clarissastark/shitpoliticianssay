class GameController < ApplicationController

  def start
    @quote = Quote.all.sample
    @politician = Politician.all.sample
  end

  def check
    binding.pry
  end

end
