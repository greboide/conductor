class InitialMigration < ActiveRecord::Migration
  def self.up
    create_table :open_id_authentication_associations do |t|
      t.integer :issued, :lifetime
      t.string :handle, :assoc_type
      t.binary :server_url, :secret
    end

    create_table :open_id_authentication_nonces do |t|
      t.integer :timestamp, :null => false
      t.string :server_url, :null => true
      t.string :salt, :null => false
    end

    create_table :sessions do |t|
      t.string :session_id, :null => false
      t.text :data
      t.timestamps
    end

    add_index :sessions, :session_id
    add_index :sessions, :updated_at

    create_table :users do |t|
      t.string :first_name, :default => "", :null => false
      t.string :last_name, :default => "", :null => false
      t.string :email, :default => "", :null => false

      t.string :login, :default => nil, :null => true
      t.string :crypted_password, :default => nil, :null => true
      t.string :password_salt, :default => nil, :null => true

      t.string :openid_identifier

      t.string :perishable_token, :default => "", :null => false
      t.string :remember_token, :null => false
      t.integer :login_count, :default => 0, :null => false
      t.datetime :last_request_at
      t.datetime :last_login_at
      t.datetime :current_login_at

      t.timestamps
    end

    add_index :users, :login
    add_index :users, :openid_identifier
    add_index :users, :remember_token
    add_index :users, :last_request_at
  end

  def self.down
    drop_table :users

    drop_table :sessions

    drop_table :open_id_authentication_nonces

    drop_table :open_id_authentication_associations
  end
end
