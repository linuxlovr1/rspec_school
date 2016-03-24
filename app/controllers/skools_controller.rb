class SkoolsController < ApplicationController
  before_action :skool, except: [:index, :new, :create]
  
  def index
    @skools = Skool.all
  end

  def show
  end

  def new
    @skool = Skool.new
  end

  def create
    @skool = Skool.create(skool_params)
    if @skool.save
      redirect_to skool_path
    else
      render :new
    end
  end 


  def edit
  end

  def update
    if @skool.update(skool_params)
      redirect_to skool_path(skool)
    else
      render :edit
    end
  end

  def destroy
    @skool.destroy
    redirect_to skool_path
  end

private
  def skool_params
    params.require(:skool).permit(:name, :teachers)
  end

  def skool
    @skool = Skool.find(params[:id])
  end
end
