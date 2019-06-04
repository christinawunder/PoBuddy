class DaysController < ApplicationController
  before_action :find_day, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: :about

  def index
    @days = Day.all
    authorize @day
  end

  def new
    @day = Day.new
    authorize @day
  end

  def create
    @day = Day.new(day_params)
    @day.user = current_user
    authorise @day
    @day.save!
  end

  def show
    authorize @day
  end

  def edit
    authorize @day
  end

  def update
    @day.update(day_params)
    @day.save!
    authorize @day
  end

  def update
    @day.destroy
    authorize @day
  end

  private

  def find_day
    @day = Day.find(params[:id])
    authorize @day
  end

  def day_params
    params.require(:day).permit(:bleeding, :bad_mood, :head_pain, :abdominal_pain, :breast_pain, :date, :user_id)
  end
end
