class AddDesignerIdToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :designer_id, :integer
  end
end
