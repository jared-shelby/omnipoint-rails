class Client < ApplicationRecord
    has_many :appointments

    validates :name, presence: { message: "must contain your full name" }
    validates :number, presence: { message: "must contain your phone number" }, numericality: { only_integer: true, message: "must be an integer" }, length: { is: 10, message: "must be in 'XXXXXXXXXX' format" }
    validates :email, presence: { message: "must contain your email address" }
end
