class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :location
      t.string :number

      t.timestamps
    end
  end
end
