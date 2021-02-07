class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :location
      t.integer :assistance
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
