class CreateBands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.date :dateinit

      t.timestamps
    end
  end
end
