class AddItemsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :subtitle, :string
    add_column :projects, :abstract, :text
  end
end
