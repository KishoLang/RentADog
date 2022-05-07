class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :message
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
