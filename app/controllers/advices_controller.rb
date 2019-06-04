class AdvicesController < ApplicationController

  def index
    @advices = policy_scope(Advice)
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

  def advice_params
    params.require(:advice).permit(:day_id, :link_id)
  end
end
