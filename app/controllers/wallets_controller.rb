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
    wallet_params = params.require(:wallet).permit( :money, :wallet_name)
    wallet = Wallet.new(wallet_params)
    wallet.save
  end

  def update
    wallet = Wallet.find(params[:id])
    wallet.update( params.require(:wallet).permit( :money, :wallet_name))
  end

  def destroy
    wallet = Wallet.find(params[:id])
    wallet.destroy
  end
end
