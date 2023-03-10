class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :email
      t.string :token
      t.integer :user_id

      t.timestamps
      t.index :user_id
    end
  end
end
