class AvailableTime < ApplicationRecord
    belongs_to :technician

    def readable
        time.strftime("%A, %B %d at %H:%M")
    end
end