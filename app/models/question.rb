class Question < ActiveRecord::Base
  belongs_to :game
end

def quote_question
  self.quote
  self.politician 
end
