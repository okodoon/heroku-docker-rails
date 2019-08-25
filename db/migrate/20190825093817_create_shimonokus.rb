class CreateShimonokus < ActiveRecord::Migration[5.2]
  def change
    create_table :shimonokus do |t|
      t.string :kamishichi
      t.string :shimoshichi

      t.timestamps
    end
  end
end
