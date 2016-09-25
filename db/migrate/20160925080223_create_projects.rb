class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.text :title
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
