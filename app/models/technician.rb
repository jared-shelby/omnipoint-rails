class Technician < ApplicationRecord
  belongs_to :business
  has_many :offers
  has_many :services, through: :offers
  has_many :available_times
end
