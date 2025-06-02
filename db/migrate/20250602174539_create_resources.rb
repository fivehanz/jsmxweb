class CreateResources < ActiveRecord::Migration[8.0]
  def change
    create_table :resources do |t|
      t.string :name, null: false
      t.text :description
      t.text :links # This will store serialized array/hash data
      t.references :resource_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
