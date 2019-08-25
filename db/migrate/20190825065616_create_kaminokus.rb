class CreateKaminokus < ActiveRecord::Migration[5.2]
  def change
    create_table :kaminokus do |t|
      t.string :kamigo
      t.string :nakashichi
      t.string :shimogo

      t.timestamps
    end
  end
end
