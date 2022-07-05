class Technician < ApplicationRecord
  belongs_to :business
  has_many :offers
  has_many :services, through: :offers

  
end
