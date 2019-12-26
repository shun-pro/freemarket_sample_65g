class CreateProductBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :product_brands do |t|
      t.string :name, null: false, unique:true
      
    end
  end
end
