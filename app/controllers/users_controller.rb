class UsersController < ApplicationController
  #def index
    #if session[:login_id] != nil
      #render "new"
    #else
      #render "index"
    #end
  #end

  #def new
    #user = User.find_by(uid: params[:uid])
    
    #if user && BCrypt::Password.new(user.pass) == params[:pass]
      #session[:login_uid] = params[:uid]
      #redirect_to users_index_path
    #else
      #render "error"
    #end
  #end

  #def create
    #make_pass = BCrypt::Password.create(params[:pass])
    #user = User.new(uid: params[:uid], pass: make_pass)
    #user.save
    #session[:login_uid] = params[:uid]
    #redirect_to users_index_path
  #end

  #def new
    
  #end
  
  #def create
    #user = User.find_by(uid: params[:uid])
    
    #if user && BCrypt::Password.new(user.pass) == params[:pass]
      #session[:login_uid] = params[:uid]
      #redirect_to users_index_path
    #else
      #render "error"
    #end
  #end

  #def destroy
    
  #end
  
  
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
   hashed_password = BCrypt::Password.create(params[:pass])
   user = User.new(uid: params[:uid], pass: hashed_password)
   user.save
   redirect_to users_path
  end
  
  def destroy
    #@user = User.find(params[:id])
    #@user.destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end
end
