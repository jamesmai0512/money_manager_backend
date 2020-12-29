class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.references :wallet, foreign_key: true
      t.integer :transactions_money
      t.datetime :date
      t.string :category
      t.text :note

      t.timestamps
    end
  end
end
