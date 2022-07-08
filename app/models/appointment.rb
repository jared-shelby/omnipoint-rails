class Appointment < ApplicationRecord
  belongs_to :offer
  belongs_to :client
  has_one :technician, through: :offer
  has_one :service, through: :offer
  has_one :business, through: :technician

  def readable_time
    self.time.strftime("%A, %B %d at %l:00%P")
  end
end
