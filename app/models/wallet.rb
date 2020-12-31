class Wallet < ApplicationRecord
  has_many :transactions
  validates :money, :wallet_name, presence: true
end
