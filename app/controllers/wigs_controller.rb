class WigsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @wigs = Wig.all
  end

  def show
    @wig = Wig.find(params[:id])
  end

  def new
    @wig = Wig.new
  end

  def create
    @wig = Wig.new(wig_params)
    if @wig.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @wig = Wig.find(params[:id])
  end

  def update
    @wig = Wig.find(params[:id])
    @wig.update(wig_params)
    redirect_to wig_path(@wig)
  end

  def destroy
    @wig = Wig.find(params[:id])
    @wig.requests.delete_all
    @wig.delete
    redirect_to #??
  end

  private

  def wig_params
    params.require(:wig).permit(:name, :color, :shape, :description, :price, :user_id, :photo)
  end
end
