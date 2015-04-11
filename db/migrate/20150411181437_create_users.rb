class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.integer :edad
      t.string  :perfil
      t.string  :sector_laboral
      t.string  :resultado
      t.integer :latitud
      t.integer :longitud
      t.timestamps null: false
    end
  end
end
