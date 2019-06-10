class EmotionsAdviceGenerator
  def initialize(day)
    @day = day
    generate_emotions_advice
  end

  def generate_emotions_advice
    @day.emotions.each do |emotion|
      EmotionsAdvice.find(emotion == EmotionsAdvice.category)
    end
  end
end
