class MitsusController < ApplicationController
  def show
    @mitsu = Mitsu.find(params[:id])
  end

  def index
    @mitsus = Mitsu.mitsu_index.page(params[:page]).per(10)
  end

  def create
    @mitsu = Mitsu.new(mitsu_params)
    @mitsu.user_id = current_user.id
    if @mitsu.save
      redirect_to mitsu_path(@mitsu)
    else
      render :new
    end
  end

  def new
    @mitsu = Mitsu.new
  end

  def destroy
    mitsu = Mitsu.find(params[:id])
    mitsu.destroy
    redirect_to mitsus_path
  end

  private
  def mitsu_params
    params.require(:mitsu).permit(:title, :content, :user_id)
  end
end
