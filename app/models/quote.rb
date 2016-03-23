class Quote < ActiveRecord::Base
  belongs_to :politician

  has_many :votes, dependent: :destroy
end
