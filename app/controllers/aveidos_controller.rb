class AveidosController < ApplicationController
  def index
    @aveidos = Aveida.all
  end

  def show
    @aveida = Aveida.find(params[:id])
  end

  def new
    @aveida = Aveida.new
  end

  def create
    @aveida = Aveida.new(title: "...", body: "...")

    if @aveida.save
      redirect_to @aveida
    else
      render :new
    end
  end

end
