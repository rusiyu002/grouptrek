class CreateGoings < ActiveRecord::Migration[5.0]
  def change
    create_table :goings do |t|
      t.integer :user_id
      t.integer :trek_id

      t.timestamps

    end
  end
end
