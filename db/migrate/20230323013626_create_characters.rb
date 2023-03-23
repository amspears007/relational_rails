class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :disposition
      t.boolean :has_job
      t.string :number_of_children
      t.references :sitcom, foreign_key: true

      t.timestamps
    end
  end
end
