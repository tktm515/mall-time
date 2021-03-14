class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :food_name,    null: false
      t.text   :food_text,    null: false
      t.integer :price,       null: false
      t.references  :tenant,          foreign_key: true
      t.timestamps
    end
  end
end
