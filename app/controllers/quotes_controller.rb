class QuotesController < ApplicationController

  #index
  def index
    @quotes = Quote.all
    # @quote = Quote.find(params[:id])
  end

  #new
  def new
    @quote = Quote.new
  end

  #show
  def show
    @quote = Quote.find(params[:id])
  end

  #create
  def create
    @quote = Quote.create!(quotes_params)
    redirect_to quote_url(@quote)
  end

  #edit
  def edit
    @quote = Quote.find(params[:id])
  end

  #update
  def update
    @quote.update(quotes_params)
    redirect_to quote_url(@quote)
  end

  #delete
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    redirect_to quotes_url
  end

  #post
  def upvote
    @quote = Quote.find(params[:id])
    @quote.votes.create
    redirect_to(quotes_url)
  end

  #post
  def unvote
    @quote = Quote.find(params[:id])
    if @quote.votes
      @quote.votes.last.destroy      
      redirect_to(quotes_url)
    end
  end



  private

  def quotes_params
    params.require(:quote).permit(:source, :direct_quote, :quote_date, :politician_id, :fact_check_rating)
  end

end
