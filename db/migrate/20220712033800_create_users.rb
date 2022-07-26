# User model migration
class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, index: true, unique: true
      t.string :document, index: true, unique: true
      t.integer :document_type, default: 0
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.boolean :active, default: true
      t.boolean :blocked, default: false
      t.integer :user_type, default: 0

      t.timestamps
    end
  end
end
