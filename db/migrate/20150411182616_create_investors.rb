class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.string :nombre
      t.integer :edad
      t.string :perfil
      t.string :sector
      t.integer :resultado
      t.integer :latitud
      t.integer :longitud

      t.timestamps null: false
    end
  end
end
