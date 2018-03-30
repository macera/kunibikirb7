class CreateItemOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :item_options do |t|
      t.string :name
      t.string :value
      t.references :form_item, foreign_key: true

      t.timestamps
    end
  end
end
