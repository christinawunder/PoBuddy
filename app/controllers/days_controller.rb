class DaysController < ApplicationController
  before_action :find_day, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: :about

  def index
    @days = policy_scope(Day)
  end

  def new
    @day = Day.new
    authorize @day
  end

  def create
    @day = Day.new(day_params)
    @day.user = current_user
    # create the day.links (trhough advices)
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
    params.require(:day).permit(:bleeding, :bad_mood, :head_pain, :abdominal_pain, :breast_pain, :date, :user_id)
  end

  def create_advice
    @advice = Advice.new(day_symptoms)
  end

  def day_symptoms
    if @day.bleeding >= 2 && @day.bleeding < 4
      # take 1 bleeding article
    elsif @day.bleeding >= 4
      # take 2 bleeding articles
    end

    if @day.bad_mood >= 2 && @day.bad_mood < 4
      # take 1 bad_mood article
    elsif @day.bad_mood >= 4
      # take 2 bad_mood articles
    end

    if @day.head_pain >= 2 && @day.head_pain < 4
      # take 1 head_pain article
    elsif @day.head_pain >= 4
      # take 2 head_pain articles
    end

    if @day.abdominal_pain >= 2 && @day.abdominal_pain < 4
      # take 1 abdominal_pain article
    elsif @day.abdominal_pain >= 4
      # take 2 abdominal_pain articles
    end

    if @day.breast_pain >= 2 && @day.breast_pain < 4
      # take 1 breast_pain article
    elsif @day.breast_pain >= 4
      # take 2 breast_pain articles
    end
  end
end






