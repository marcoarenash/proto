class CreateMes < ActiveRecord::Migration[5.2]
  def change
    create_table :mes do |t|
      t.text :que_piensa_y_siente
      t.text :que_ve
      t.text :que_oye
      t.text :que_dice_y_hace
      t.text :esfuerzos
      t.text :resultados
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
