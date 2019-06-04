class AdvicesController < ApplicationController
  before_action :set_advice, only: [:show]

  def index
    @advices = Advices.all
    authorize @advice
  end

  def new
    @advice = Advice.new
    authorize @advice
  end

  def create
    @advice = Advice.new(params[:advice])
    @advice.save
    authorize @advice
  end

  private

  def set_advice
    @advice = Advice.find(params[:id])
  end
end
