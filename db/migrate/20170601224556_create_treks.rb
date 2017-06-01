class CreateTreks < ActiveRecord::Migration[5.0]
  def change
    create_table :treks do |t|
      t.string :destination
      t.date :start_date
      t.date :end_date
      t.text :description
      t.integer :user_id
      t.string :image
      t.integer :days_to_go

      t.timestamps

    end
  end
end
