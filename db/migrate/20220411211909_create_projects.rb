class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.text :name
      t.text :location
      t.text :area
      t.text :style
      t.date :start_date
      t.boolean :finished
      t.date :estimate_time_finish
      t.text :image 
      t.text :cost
      t.timestamps
    end
  end
end
