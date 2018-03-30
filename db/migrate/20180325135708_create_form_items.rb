class CreateFormItems < ActiveRecord::Migration[5.1]
  def change
    create_table :form_items do |t|
      t.string :name
      t.string :field
      t.boolean :required
      t.integer :maxlength
      t.integer :minlength
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
