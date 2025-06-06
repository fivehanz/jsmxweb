class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.text :description
      t.text :body
      t.text :links # This will store serialized array/hash data
      t.references :project_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
