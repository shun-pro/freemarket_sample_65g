class CreateProductMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_messages do |t|
      t.text :message, null: false
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.timestamps
    end
  end
end
