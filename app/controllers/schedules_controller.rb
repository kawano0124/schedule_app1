class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:notice] = "新規予定を追加しました"
      redirect_to :schedules
    else
      flash.now[:error] = "新規予定を追加できませんでした"
      render "new"
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :start_date, :end_date, :all_day, :schedule_memo))
      flash[:notice] = "ユーザーID「#{@schedule.id}」の情報を更新しました"
      redirect_to :schedules
    else
      flash[:error] = "エラーが発生しました"
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :schedules
  end

  def schedule_params
    params.require(:schedule).permit(:title, :start_date, :end_date, :all_day, :schedule_memo)
  end
end
