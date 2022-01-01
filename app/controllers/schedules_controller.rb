class SchedulesController < ApplicationController
  before_action :schedule_set, except: [:index,:new,:create]

  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @schedule.destroy
    redirect_to root_path
  end

  private

  def schedule_set
    @schedule = Schedule.find(params[:id])
  end


  def schedule_params
    params.require(:schedule).permit(:company,:interview_id,:dating,:start_time,:end_time,:memo)
  end

end
