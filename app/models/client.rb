class Client < ApplicationRecord
    has_many :appointments

    validates :name, presence: { message: "must contain your full name" }
    validates :number, presence: { message: "must contain your phone number" }, numericality: { only_integer: true, message: "must be an integer" }, length: { is: 10, message: "must be in 'XXXXXXXXXX' format" }
    validates :email, presence: { message: "must contain your email address" }

    def readable_number
        arr = self.number.to_s.chars 
        return "(" + arr[0] + arr[1] + arr[2] + ")" + " " + arr[3] + arr[4] + arr[5] + "-" + arr[6] + arr[7] + arr[8] + arr[9]
    end
end
