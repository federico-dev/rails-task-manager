class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(params[:tasks])
    @tasks.save
    redirect_to tasks_path(@tasks)
  end

  private

  def tasks_params
    params.require(:tasks).permit(:title, :details, :completed)
  end
end
