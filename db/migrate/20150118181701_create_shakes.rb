class CreateShakes < ActiveRecord::Migration
  def change
    create_table :shakes do |t|
      t.string :nimi
      t.text :kuvaus
      t.decimal :arvo
      t.string :juoppo
      t.string :asia1
      t.string :asia2
      t.string :asia3
      t.string :asia4
      t.string :asia5
      t.string :asia6

      t.timestamps null: false
    end
  end
end
