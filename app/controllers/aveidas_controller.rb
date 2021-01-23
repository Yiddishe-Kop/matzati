class AveidasController < ApplicationController
  def index
    aveidas = Aveida.all

    render inertia: 'Aveidas/Index',
      props: {
        aveidas: aveidas.as_json
      }
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

  def destroy
    @aveida = Aveida.find(params[:id])
    @aveida.destroy

    redirect_to root_path
  end

  private
    def aveida_params
      params.require(:aveida).permit(:title, :body)
    end

end
