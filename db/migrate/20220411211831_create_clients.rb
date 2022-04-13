class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.text :name
      t.text :phone
      t.text :email
      t.text :address
      t.text :heard_us_from
      t.text :preferred_style 
      t.text :image
      t.timestamps
    end
  end
end
