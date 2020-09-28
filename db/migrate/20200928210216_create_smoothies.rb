class CreateSmoothies < ActiveRecord::Migration[6.0]
  def change
    create_table :smoothies do |t|
      t.string :classic_green
      t.string :orange_dreamsicle
      t.string :chocolate_peanut_butter
      t.string :creamy_peanut_butter
      t.string :pina_colada
      t.string :strawberry_banana
      t.string :mocha
      t.string :mixed_berry

      t.timestamps
    end
  end
end
