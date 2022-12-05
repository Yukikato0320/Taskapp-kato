class TasksController < ApplicationController
  
  def index
    @user = User.find(params[:user_id])
    @tasks = @user.tasks
  end
  
  def show 
    @user = User.find(params[:user_id])
    @task = Task.find(params[:id])
  end
  
  def new
    @user = User.find(params[:user_id])
    @task = Task.new
  end
  
  def create
    @task = Task.new(content: params[:content] ,user_id: params[:user_id])
    @task.save
    redirect_to user_tasks_url
  end
  
  def edit
    @user = User.find(params[:user_id])
    @task = Task.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:user_id])
    @task.destroy
    redirect_to user_tasks_url @user
  end
  
  
end
