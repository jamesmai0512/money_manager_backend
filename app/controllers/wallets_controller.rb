class WalletsController < ApplicationController
  def index
    wallets = Wallet.all
    render json: wallets
  end

  def show
    wallet = Wallet.find(params[:id])
    render json: wallet
  end

  def create
    wallet = Wallet.new(wallet_params)
    if wallet.valid?
      head 201
      wallet.save
    else 
      head 422
    end
  end

  def update
    wallet = Wallet.find(params[:id])
    wallet.update(wallet_params)
    head 201
  end

  def destroy
    wallet = Wallet.find(params[:id])
    wallet.destroy
  end

  private

  def wallet_params
    params.require(:wallet).permit( :money, :wallet_name)
  end
end
