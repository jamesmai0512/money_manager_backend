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
    transaction = Transaction.new(transaction_params)
    if transaction.valid?
      head 201
      transaction.save
    else 
      head 422
    end
  end

  def update
    transaction = Transaction.find(params[:id])
    transaction.update(transaction_params)
  end

  def destroy
    transaction = Transaction.find(params[:id])
    transaction.destroy
  end

  private

  def transaction_params 
    params.require(:transaction).permit( :transactions_money, :date, :category, :note)
  end
end
