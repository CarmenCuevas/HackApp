class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :giro
      t.string :forma_juridica
      t.string :tamaño
      t.string :rango
      t.integer :capital_inicial
      t.integer :roi
      t.integer :longitud
      t.integer :latitud

      t.timestamps null: false
    end
  end
end
