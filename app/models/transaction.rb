class Transaction < ApplicationRecord
  belongs_to :wallet, optional: true
  validates :transactions_money, :date, :category, :note, presence: true
end
