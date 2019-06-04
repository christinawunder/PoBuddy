class AdvicesController < ApplicationController
  before_action :set_advice, only: [:show]

  def index
    @advices = Advices.all
  end

  def show
  end

  def new
    @advice = Advice.new
  end

  def create
    @advice = Advice.new(params[:advice])
    @advice.save
    if @advice.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_advice
    @advice = Advice.find(params[:id])
  end
end
