class GameController < ApplicationController

  def start
    @quote = Quote.all.sample
    @politician = Politician.all.sample
  end

  def check
    @quote = Quote.find(params[:politician_id])
    @politician = Politician.find(params[:id])
    if @quote.id == @politician.id
      return true
    else return false
    end
  end



end
