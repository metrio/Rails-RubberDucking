class DucksController < ApplicationController
 
  before_action :find_duck, only:[:show, :edit, :update, :destroy]

  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
    render :new
  end

  def create
    @duck = Duck.new(duck_params)

      if @duck.save
      redirect_to duck_path(@duck)
    else
      flash[:errors] = @duck.errors.full_messages
      redirect_to new_duck_path
    end
  end

  def edit
    
    render :edit
  end

  def update
    find_duck
   if  @duck.update(duck_params)
      redirect_to duck_path(@duck)
    else
      flash[:errors] = @duck.errors.full_messages
      redirect_to edit_duck_path
    end
  end

  def destroy
    @duck.destroy

    redirect_to ducks_path
  end

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

  def find_duck
    @duck = Duck.find(params[:id])
  end

end

