class CreateWallets < ActiveRecord::Migration[5.0]
  def change
    create_table :wallets do |t|
      t.integer :money
      t.string :wallet_name

      t.timestamps
    end
  end
end
