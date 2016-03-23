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
          session[:score]+= 1
        else
          flash[:notice] = "Wrong! It was #{@quote.politician.name} who said '#{@quote.direct_quote}.' Politifact rated this quote as '#{@quote.fact_check_rating}'."
        end
        redirect_to :back
      elsif params[:didnt_say_it]
        if @quote.politician_id != @politician.id
          flash[:notice] = "Correct! #{@politician.name} didn't say it – it was #{@quote.politician.name} who said #{@quote.direct_quote}. Politifact rated this quote as '#{@quote.fact_check_rating}'."
          session[:score]+= 1
        else
          flash[:notice] = "Wrong! #{@politician.name} didn't say it – it was #{@quote.politician.name} who said #{@quote.direct_quote}. Politifact rated this quote as '#{@quote.fact_check_rating}.'"
        end
        redirect_to :back
      end
    end

    def score_key
      @@score_key ||= SecureRandom.uuid
      # session[:user_id] =
    end

    def get_score
      if session[:score_key] == score_key
      @score = session[:score]
      else
        0
      end
    end

    def save_score score
      session[:score] = score
      session[:score_key] = score_key
    end

    def start_over
      session[:score] = 0
      redirect_to :action => "index"
      # redirect_to root_url
    end

  end
