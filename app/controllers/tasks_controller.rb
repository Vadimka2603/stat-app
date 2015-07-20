class TasksController < ApplicationController
  def index
    @tasks = Task.all.paginate(page: params[:page],per_page: 10)
  end

  def new
    @task=Task.new
  end

  def create
    if params[:profile][:begin_year].to_i > params[:profile][:end_year].to_i
      redirect_to load_path, notice: "Вsбраные данные неверны. Заданный период неверный"
    else
      @task = Task.create(competition_id: params[:object][:competition_id], start_date: params[:profile][:begin_year].to_i, finish_date: params[:profile][:end_year].to_i)
      redirect_to load_path
    end
  end

  def analize
  end

  def show
  end

  def delete
  end
end
