class AveidasController < ApplicationController
  def index
    render inertia: 'Aveidas/Index',
      props: {
        aveidas: Aveida.all.as_json
      }
  end

  def show
    render inertia: 'Aveidas/Show',
      props: {
        aveida: Aveida.find(params[:id]).as_json
      }
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
    render inertia: 'Aveidas/Edit',
      props: {
        aveida: Aveida.find(params[:id]).as_json
      }
  end

  def update
    aveida = Aveida.find(params[:id])
    puts YAML::dump(aveida_params)
    if aveida.update(aveida_params)
      # redirect_to aveidas_path
      redirect_to aveida_path(aveida)
      # redirect_to root_path
    else
      redirect_back
    end
  end

  def destroy
    @aveida = Aveida.find(params[:id])
    @aveida.destroy

    redirect_to root_path
  end

  private
    def aveida_params
      params.fetch(:aveida, {}).permit(:title, :body)
    end

end
