class StaitionsController < ApplicationController

  def new
    @staition = Staition.new
  end

  def edit
    @staition = Staition.find(params[:id])
  end

  def show
    @staition = Staition.find(params[:id])
  end

  def destroy
  end

  def update
  end

  def create
    @staition = Staition.new(staition_params)
    if @staition.save
      redirect_to staition_path(@staition.id)
    else
      render :new
    end
  end
end

private
def staition_params
  params.require(:staition).permit(:line, :staition_name, :on_foot)
end
