class AveidasController < ApplicationController
  def index
    @aveidas = Aveida.all
  end

  def show
    @aveida = Aveida.find(params[:id])
  end

  def new
    @aveida = Aveida.new
  end

  def create
    @aveida = Aveida.new(aveida_params)

    if @aveida.save
      redirect_to @aveida
    else
      render :new
    end
  end

  def edit
    @aveida = Aveida.find(params[:id])
  end

  def update
    @aveida = Aveida.find(params[:id])

    if @aveida.update(aveida_params)
      redirect_to @aveida
    else
      render :edit
    end
  end

  private
    def aveida_params
      params.require(:aveida).permit(:title, :body)
    end

end
