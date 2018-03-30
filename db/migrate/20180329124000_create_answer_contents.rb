class CreateAnswerContents < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_contents do |t|
      t.string :value
      t.references :answer, foreign_key: true
      t.references :form_item, foreign_key: true
      t.references :item_option, foreign_key: true

      t.timestamps
    end
  end
end
