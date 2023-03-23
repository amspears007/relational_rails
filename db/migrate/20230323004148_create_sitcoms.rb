class CreateSitcoms < ActiveRecord::Migration[5.2]
  def change
    create_table :sitcoms do |t|
      t.string :name
      t.boolean :streaming
      t.integer :number_of_seasons
      t.integer :year_end

      t.timestamps
    end
  end
end
