class DaysController < ApplicationController
  before_action :find_day, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :about
# Dear friends, it has been an honour and a priviledge to work
# with you on this project. All the best in your new conquests,
# whether they be in the business side or developer side,
# Nikos


# // /╲/\[☉﹏☉]/\╱\ <-- spider! AHH! 🕷️

  def index
    @days = policy_scope(Day).where(user: current_user)
    @day_by_date = @days.group_by(&:date)

    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    # @day = current_user.days.find_by(date: @date)
    # @day ||= Day.new(date: @date)
    @day = Day.new
  end

  def new
    @day = Day.new(user: current_user, date: params[:date])
    authorize @day
  end

  def create
    @day = Day.new(day_params)
    @day.user = current_user
    @day.date ||= Date.today
    @text = @day.usertext
    authorize @day
    @day.user = current_user
    @day.emotion = SentimentAnalyser.new.call(@text) if @text != ""
    if @day.save
      AdvicesCombinator.new(@day)
      redirect_to day_path(@day)
    else
      @date = @day.date
      @days = policy_scope(Day).where(user: current_user)
      @day_by_date = @days.group_by(&:date)
      render :index
    end
  end

  def show
    @advices = @day.advices
    @days = policy_scope(Day).where(user: current_user)
    @day_by_date = @days.group_by(&:date)

    @date = params[:date] ? Date.parse(params[:date]) : Date.today

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
    redirect_to root_path
  end

  private

  def find_day
    @day = Day.find(params[:id])
    authorize @day
  end

  def day_params
    params.require(:day).permit(:bleeding, :bad_mood, :head_pain, :abdominal_pain, :breast_pain, :date, :user_id, :emotion, :usertext, :text)
  end
end
