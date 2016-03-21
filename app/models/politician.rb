class Politician < ActiveRecord::Base
  has_many :quotes, dependent: :destroy
end
