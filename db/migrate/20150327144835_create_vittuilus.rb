class CreateVittuilus < ActiveRecord::Migration
  def change
    create_table :vittuilus do |t|
      t.string :user_nimi
      t.text :teksti
      t.integer :retsept_id
      t.decimal :arvostus

      t.timestamps null: false
    end
  end
end
