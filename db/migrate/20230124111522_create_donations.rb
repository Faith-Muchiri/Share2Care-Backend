class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :product
      t.integer :quantity
      t.date :date_donated
      t.string :status

      t.timestamps
    end
  end
end
