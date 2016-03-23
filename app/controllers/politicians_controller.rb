class PoliticiansController < ApplicationController

  #index
  def index
    # @politician = Politician.find(params[:id])
    @politicians = Politician.all
  end

  #new
  def new
    @politician = Politician.new
  end

  #show
  def show
    @politician = Politician.find(params[:id])
  end

  #create
  def create
    @politician = Politician.create!(politicians_params)
    redirect_to politician_url(@politician)
  end

  #edit
  def edit
    @politician = Politician.find(params[:id])
  end

  #update
  def update
    @politician.update(politicians_params)
    redirect_to politician_url(@politician)
  end

  #delete
  def destroy
    @politician = Politician.find(params[:id])
    @politician.destroy
    redirect_to politicians_url
  end

  private

  def politicians_params
    params.require(:politician).permit(:name, :party, :state, :current_office, :photo_url, :elect_date, :running_for)
  end

end
