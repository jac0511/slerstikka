class CreateRetsepts < ActiveRecord::Migration
  def change
    create_table :retsepts do |t|
      t.string :luokka
      t.string :nimi
      t.text :kuvaus
      t.text :ainekset
      t.text :ohjeet
      t.string :aika
      t.string :vaativuus
		t.string :user
		t.string :kuva
		t.string :tieto1
		t.string :tieto2
		t.string :tieto3
		t.string :tieto4
		t.string :tieto5
		t.string :tieto6
		t.string :tieto7
		t.string :tieto8
		t.string :tieto9
		t.string :tieto0

      t.timestamps null: false
    end
  end
end
