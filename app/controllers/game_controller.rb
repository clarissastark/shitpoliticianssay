class GameController < ApplicationController

  def start
    @quote = Quote.all.sample
    @politician = Politician.all.sample
    # @politician = @quote.politician
  end

  def check
    @quote = Quote.find(params[:quote_id])
    @politician = Politician.find(params[:politician_id])
    if params[:said_it]
      if @quote.politician_id == @politician.id
        flash[:notice] = "Correct! And worth knowing that Politifact rated #{@quote.politician.name}'s quote as '#{@quote.fact_check_rating}.' You can learn more here: #{@quote.source}."
      else
        flash[:notice] = "Wrong! It was #{@quote.politician.name} who said '#{@quote.direct_quote}.' Politifact rated this quote as '#{@quote.fact_check_rating}'."
      end
      redirect_to :back
    elsif params[:didnt_say_it]
      if @quote.politician_id != @politician.id
        flash[:notice] = "Correct! #{@politician.name} didn't say it – it was #{@quote.politician.name} who said #{@quote.direct_quote}. Politifact rated this quote as '#{@quote.fact_check_rating}'."
      else
        flash[:notice] = "Wrong! #{@politician.name} didn't say it – it was #{@quote.politician.name} who said #{@quote.direct_quote}. Politifact rated this quote as '#{@quote.fact_check_rating}.'"
      end
      redirect_to :back
    end
  end



  def game_over
  end

end
