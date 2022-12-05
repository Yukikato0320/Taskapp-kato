class TasksController < ApplicationController
  
  def index
    @user = User.find(params[:user_id])
    @tasks = @user.tasks
  end
  
  def show 
    @user = User.find(params[:user_id])
  end
  
  def new
    @user = User.find(params[:user_id])
    @task = Task.new
  end
  
  def create
    
  end
  
  def edit
  end
  
  def destroy
    @user = User.find(params[:user_id])
    @task.destroy
    redirect_to user_tasks_url @user
  end
  
  
end
