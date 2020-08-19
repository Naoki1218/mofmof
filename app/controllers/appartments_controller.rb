class AppartmentsController < ApplicationController
  before_action :set_appartment, only: [:show, :edit, :update, :destroy]
  def index
    @appartments = Appartment.all
  end

  def create
    @appartment = Appartments.build(appartment_params)
    if params[:back]
      render :new
    else
      if @appartment.save
        redirect_to appartments_path, notice: "登録！"
      else
        render :new
      end
    end
  end

  def show
    @appartments = Appartment.find(params[:id])
  end

  def new
    @appartments = Appartment.new
  end

  def edit
    @appartments = Appartment.find(params[:id])
  end

  def updated
    @appartments = Appartment.find(params[:id])
    if @appartment.update(appartment_params)
      redirect_to appartments_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @appartment.destroy
    redirect_to appartments_path, notice:"削除しました！"
  end
end

private
def appartment_params
  params.require(:appartment).permit(:name, :rent, :address, :year_built, :optional)
end

def set_appartment
  @appartment = appartment.find(params[:id])
end
