class TransactionsController < ApplicationController
  def index
    transactions = Transaction.all
    render json: transactions
  end

  def show
    transaction = Transaction.find(params[:id])
    render json: transaction
  end

  def create
    transaction_params = params.require(:transaction).permit( :transactions_money, :date, :category, :note)
    transaction = Transaction.new(transaction_params)
    transaction.save
  end

  def update
    transaction = Transaction.find(params[:id])
    transaction.update( params.require(:transaction).permit( :transactions_money, :date, :category, :note))
  end

  def destroy
    transaction = Transaction.find(params[:id])
    transaction.destroy
  end
end
