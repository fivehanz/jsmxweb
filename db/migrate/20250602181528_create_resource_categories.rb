class CreateResourceCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :resource_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
