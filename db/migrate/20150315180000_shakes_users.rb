class ShakesUsers < ActiveRecord::Migration
  def change
    create_table :shakes_users, id: false  do |t|
      t.belongs_to :shakes
      t.belongs_to :users
      t.decimal :arvo
      t.decimal :oravannahat
    end
  end
end