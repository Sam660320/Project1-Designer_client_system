class CreateDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :designers do |t|
      t.text :name
      t.date :dob
      t.text :hireyear
      t.text :email
      t.text :phone
      t.text :address
      t.text :image
      t.text :award
      t.timestamps

    end
  end
end
