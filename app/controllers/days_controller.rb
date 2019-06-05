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
    create_advice_combo # private method below
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

  def daily_advices
    advices_combo = []
    advices_combo << [bleeding_links, bad_mood_links, head_pain_links, abdominal_pain_links, breast_pain_links]
  end

  def create_advice
    @advice = Advice.new(symptom)
  end

  def bleeding_links
    if @day.bleeding >= 1 && @day.bleeding < 4
      create_advice(Link.all.where(category: 'bleeding').sample)
    elsif @day.bleeding >= 4
      2.times(create_advice(Link.all.where(category: 'bleeding').sample))
    end
  end

  def bad_mood_links
    if @day.bad_mood >= 1 && @day.bad_mood < 4
      create_advice(Link.all.where(category: 'bad mood').sample)
    elsif @day.bad_mood >= 4
      2.times(create_advice(Link.all.where(category: 'bad mood').sample))
    end
  end

  def head_pain_links
    if @day.head_pain >= 1 && @day.head_pain < 4
      create_advice(Link.all.where(category: 'head_pain').sample)
    elsif @day.head_pain >= 4
      2.times(create_advice(Link.all.where(category: 'head_pain').sample))
    end
  end

  def abdominal_pain_links
    if @day.abdominal_pain >= 2 && @day.abdominal_pain < 4
      create_advice(Link.all.where(category: 'abdominal pain').sample)
    elsif @day.abdominal_pain >= 4
      2.times(create_advice(Link.all.where(category: 'abdominal pain').sample))
    end
  end

  def breast_pain_links
    if @day.breast_pain >= 2 && @day.breast_pain < 4
      create_advice(Link.all.where(category: 'breast pain').sample)
    elsif @day.breast_pain >= 4
      2.times(create_advice(Link.all.where(category: 'breast pain').sample))
    end
  end
end
