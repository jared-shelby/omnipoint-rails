class CreateAvailableTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :available_times do |t|
      t.references :technician
      t.datetime :time
    end
  end
end
