class AddWalletNameToTransaction < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :wallet_name, :string
  end
end
