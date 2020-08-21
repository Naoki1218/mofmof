class AppartmentsController < ApplicationController
  before_action :set_appartment, only: [:show, :edit, :update, :destroy]
  def index
    @appartments = Appartment.all
  end

  def create
    @appartment = Appartment.new(appartment_params)
    if params[:back]
      render :new
    else
      if @appartment.save
        redirect_to appartments_path, notice: "登録しました！"
      else
        render :new
      end
    end
  end

  def show
    @appartments = Appartment.find(params[:id])
  end

  def new
    @appartment = Appartment.new
    2.times { @appartment.staitions.build }
  end

  def edit
    @appartment = Appartment.find(params[:id])
    @appartment.staitions.build
  end

  def update
    @appartment = Appartment.find(params[:id])
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
  params.require(:appartment).permit(:name, :rent, :address, :year_built, :optional, staitions_attributes: [:line, :staition_name, :on_foot, :appartment_id, :id],)
end

def set_appartment
  @appartment = Appartment.find(params[:id])
end
