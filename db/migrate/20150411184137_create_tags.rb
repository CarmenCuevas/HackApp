class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :id_investor
      t.string  :tag
      t.timestamps null: false
    end
  end
end
