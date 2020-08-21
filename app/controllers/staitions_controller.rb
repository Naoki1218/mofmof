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

  def create
    @staition = Staition.new(staition_params)
    if params[:back]
      render :new
    else
    if @staition.save
      redirect_to staition_path (@staition.id)
    else
      render :new
    end
  end
end
