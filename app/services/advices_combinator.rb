class AdvicesCombinator
  def initialize(day)
    @day = day
    create_advices_combo
  end

  private

  def create_advices_combo
    advices_combo = []
    advices_combo << [
      general_link,
      (bleeding_links if @day.bleeding),
      (bad_mood_links if @day.bad_mood),
      (head_pain_links if @day.head_pain),
      (abdominal_pain_links if @day.abdominal_pain),
      (breast_pain_links if @day.breast_pain)
    ]
  end

  def create_advice(link, day)
    Advice.create!(link: link, day: day)
  end

  def general_link
    @link = Link.where(category: 'general').sample
    create_advice(@link, @day)
  end

  def bleeding_links
    @link = Link.where(category: 'bleeding').sample
    if @day.bleeding >= 1 && @day.bleeding < 4
      create_advice(@link, @day)
    elsif @day.bleeding >= 4
      2.times { create_advice(@link, @day) }
    end
  end

  def bad_mood_links
    @link = Link.where(category: 'bad mood').sample
    if @day.bad_mood >= 1 && @day.bad_mood < 4
      create_advice(@link, @day)
    elsif @day.bad_mood >= 4
      2.times { create_advice(@link, @day) }
    end
  end

  def head_pain_links
    @link = Link.where(category: 'head pain').sample
    if @day.head_pain >= 1 && @day.head_pain < 4
      create_advice(@link, @day)
    elsif @day.head_pain >= 4
      2.times { create_advice(@link, @day) }
    end
  end

  def abdominal_pain_links
    @link = Link.where(category: 'abdominal pain').sample
    if @day.abdominal_pain >= 1 && @day.abdominal_pain < 4
      create_advice(@link, @day)
    elsif @day.abdominal_pain >= 4
      2.times { create_advice(@link, @day) }
    end
  end

  def breast_pain_links
    @link = Link.where(category: 'breast pain').sample
    if @day.breast_pain >= 1 && @day.breast_pain < 4
      create_advice(@link, @day)
    elsif @day.breast_pain >= 4
      2.times { create_advice(@link, @day) }
    end
  end
end
