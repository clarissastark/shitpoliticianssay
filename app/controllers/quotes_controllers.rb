class QuotesController < ApplicationController

#index
def index
  @quotes = Quote.all
  @quote = Quote.find(params[:id])
end

#new

#show

#create

#edit

#update

#delete

end
