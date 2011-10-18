class UsersController < ApplicationController
  def index
  	@users= User.all
  end
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to root_url, :notice => 'You signed up!'
  	else
      flash.now.alert = "Uh oh... ERROR"
  		render :new
  	end

  end

  def show
  	@user = User.find params[:id]
  	
  end

  def edit
    @user = User.find params[:id]
  end

  def update
  	@user = User.find(params[:id])

  		if @user.update_attributes(params[:user])
  			redirect_to @user, :notice => 'User has been updated'
  		else
  			render :edit
  		end
  	
  end

  	def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_path, :notice => 'User has been deleted.'
  end

end
