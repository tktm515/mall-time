class CreateReserves < ActiveRecord::Migration[6.0]
  def change
    create_table :reserves do |t|
      t.references  :user,          foreign_key: true
      t.references  :food,          foreign_key: true
      t.references  :tenant,          foreign_key: true
      t.integer     :hour_id,           null: false
      t.integer     :minute_id,         null: false
      t.timestamps
    end
  end
end
