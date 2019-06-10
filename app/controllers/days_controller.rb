class DaysController < ApplicationController
  before_action :find_day, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: :about

  def index
    @days = policy_scope(Day).where(user: current_user)
    @day_by_date = @days.group_by(&:date)

    @date = params[:date] ? Date.parse(params[:date]) : Date.today

    @day = Day.new(date: @date)
    @radio_collection = [['1 ', 1], ['2 ', 2], ['3 ', 3], ['4 ', 4], ['5 ', 5]]
  end

  def new
    @day = Day.new
    authorize @day
  end

  def create
    @day = Day.new(day_params)
    @day.user = current_user
    @day.date = Date.today
    authorize @day
    @day.user = current_user
    if @day.save!
      AdvicesCombinator.new(@day)
      SentimentAnalyser.new.call(@text)
      redirect_to day_path(@day)
    else
      render :new
    end
  end

  def show
    authorize @day
    @advices = @day.advices
    @days = policy_scope(Day).where(user: current_user)
    @day_by_date = @days.group_by(&:date)

    @date = params[:date] ? Date.parse(params[:date]) : Date.today

    @day = Day.new(date: @date)
    @radio_collection = [['1 ', 1], ['2 ', 2], ['3 ', 3], ['4 ', 4], ['5 ', 5]]
  end

  def edit
    authorize @day
  end

  def update
    @day.update(day_params)
    @day.save!
    authorize @day
  end

  def destroy
    @day.destroy
    authorize @day
  end

  private

  def find_day
    @day = Day.find(params[:id])
    authorize @day
  end

  def day_params
    params.require(:day).permit(:bleeding, :bad_mood, :head_pain, :abdominal_pain, :breast_pain, :date, :user_id, :emotion)
  end
end
