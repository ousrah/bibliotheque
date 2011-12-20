class CreateLivres < ActiveRecord::Migration
  def change
    create_table :livres do |t|
      t.string :titre
      t.integer :annee
      t.string :editeur
      t.string :ecrivain
      t.integer :nbexemplaires

      t.timestamps
    end
  end
end
