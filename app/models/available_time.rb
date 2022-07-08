class AvailableTime < ApplicationRecord
    belongs_to :technician

    def readable
        time.strftime("%A, %B %d at %l:00%P")
    end
end