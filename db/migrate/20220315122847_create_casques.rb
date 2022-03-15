class CreateCasques < ActiveRecord::Migration[6.1]
  def change
    create_table :casques do |t|
      t.string :nom
      t.string :marque
      t.integer :prix
      t.string :couleur
      t.string :taille

      t.timestamps
    end
  end
end
