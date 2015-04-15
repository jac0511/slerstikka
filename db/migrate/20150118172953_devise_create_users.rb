class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
		## nimi
		t.string "etunimi",					null: false,	default: ""
		t.string "sukunimi",					null: false,	default: ""
      ## Database authenticatable
		t.string :email,						null: false,	default: ""
		t.string :encrypted_password,		null: false,	default: ""
		## muut tiedot
		t.string "kotikunta",				null: false,	default: ""
		t.string "puhelin",										default: "+358 "
		t.string "metsastajanumero",		null: false,	default: ""
		t.boolean "ayy_jasen",				null: false,	default: "false"
		t.boolean "muussa_seurassa",		null: false,	default: "false"
		t.boolean "hallituksessa",			null: false,	default: "false"
		t.boolean "avaimellinen",			null: false,	default: "false"
		t.decimal "oravannahat",			null: false,	default: "0"
		t.string "muu1"
		t.string "muu2"
		t.string "muu3"
		t.string "muu4"
		

      ## Recoverable
		t.string   :reset_password_token
		t.datetime :reset_password_sent_at

      ## Rememberable
		t.datetime :remember_created_at

      ## Trackable
		t.integer  :sign_in_count,			default: 0, null: false
		t.datetime :current_sign_in_at
		t.datetime :last_sign_in_at
		t.string   :current_sign_in_ip
		t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
		t.integer  :failed_attempts,		default: 0, null: false # Only if lock strategy is :failed_attempts
		t.string   :unlock_token # Only if unlock strategy is :email or :both
		t.datetime :locked_at


		t.timestamps
    end

    add_index :users, :email,						unique: true
    add_index :users, :reset_password_token,	unique: true
    # add_index :users, :confirmation_token,	unique: true
    add_index :users, :unlock_token,			unique: true
  end
  
#  def down
#    delete_index :users, :email,						unique: true
#    delete_index :users, :reset_password_token,	unique: true
#    # delete_index :users, :confirmation_token,	unique: true
#    delete_index :users, :unlock_token,			unique: true
#    drop_table :users
#  end
end
