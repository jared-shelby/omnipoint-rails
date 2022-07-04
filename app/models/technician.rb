class Technician < ApplicationRecord
  belongs_to :business
  has_many :offers
end
