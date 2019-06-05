class DaysController < ApplicationController
  before_action :find_day, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: :about

  def index
    @days = policy_scope(Day).where(user: current_user)
    @day_by_date = @days.group_by(&:date)

    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def new
    @day = Day.new
    authorize @day
  end

  def create
    @day = Day.new(day_params)
    authorize @day
    @day.user = current_user
    if @day.save!
      @day.advices = create_advices_combo # private method below
      redirect_to day_path(@day)
    else
      render :new
    end
  end

  def show
    authorize @day
    @advices = @day.advices
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

  def create_advices_combo
    advices_combo = []
    advices_combo << [bleeding_links, bad_mood_links, head_pain_links, abdominal_pain_links, breast_pain_links]
  end

  def create_advice(link, day)
    Advice.create!(link: link, day: day)
  end

  def bleeding_links
    if @day.bleeding >= 1 && @day.bleeding < 4
      create_advice(Link.all.where(category: 'bleeding').sample, @day)
    elsif @day.bleeding >= 4
      2.times(create_advice(Link.all.where(category: 'bleeding').sample, @day))
    end
  end

  def bad_mood_links
    if @day.bad_mood >= 1 && @day.bad_mood < 4
      create_advice(Link.all.where(category: 'bad mood').sample, @day)
    elsif @day.bad_mood >= 4
      2.times(create_advice(Link.all.where(category: 'bad mood').sample, @day))
    end
  end

  def head_pain_links
    if @day.head_pain >= 1 && @day.head_pain < 4
      create_advice(Link.all.where(category: 'head_ ain').sample, @day)
    elsif @day.head_pain >= 4
      2.times(create_advice(Link.all.where(category: 'head pain').sample, @day))
    end
  end

  def abdominal_pain_links
    if @day.abdominal_pain >= 1 && @day.abdominal_pain < 4
      create_advice(Link.all.where(category: 'abdominal pain').sample, @day)
    elsif @day.abdominal_pain >= 4
      2.times(create_advice(Link.all.where(category: 'abdominal pain').sample, @day))
    end
  end

  def breast_pain_links
    if @day.breast_pain >= 1 && @day.breast_pain < 4
      create_advice(Link.all.where(category: 'breast pain').sample, @day)
    elsif @day.breast_pain >= 4
      2.times(create_advice(Link.all.where(category: 'breast pain').sample, @day))
    end
  end
end
