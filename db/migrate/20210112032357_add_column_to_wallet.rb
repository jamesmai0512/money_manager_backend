class AddColumnToWallet < ActiveRecord::Migration[5.0]
  def change
    add_column :wallets, :currency, :string
  end
end
