class AddDesignerIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :designer_id, :integer
  end
end
