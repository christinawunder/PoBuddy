class Calendar < Struct.new(:view, :date, :callback, :personal_days)
  HEADER = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
  START_DAY = :monday

  delegate :content_tag, to: :view
# table-bordered table-striped below in class if you fuck up, Niko!
  def table
    content_tag :table, class: "calendar table table-bordered table-striped" do
      header + week_rows
    end
  end

  def header
    content_tag :tr do
      HEADER.map { |day| content_tag :th, day }.join.html_safe
    end
  end

  def week_rows
    weeks.map do |week|
      content_tag :tr do
        week.map { |day| day_cell(day) }.join.html_safe
      end
    end.join.html_safe
  end

  def day_cell(day)
    content_tag :td, view.capture(day, &callback), class: day_classes(day)
  end

  def day_classes(day)
    personal_days

    classes = []
    if personal_days.key?(day)
      if personal_days[day].first.bleeding == 1
        classes << "bleeding1"
      elsif personal_days[day].first.bleeding == 2
        classes << "bleeding2"
      elsif personal_days[day].first.bleeding == 3
        classes << "bleeding3"
      elsif personal_days[day].first.bleeding == 4
        classes << "bleeding4"
      elsif personal_days[day].first.bleeding == 5
        classes << "bleeding5"
      end
    end

    classes << "today" if day == Date.today
    classes << "not-month" if day.month != date.month
    classes << "passed-days" if (day < Date.today) && (day.month == date.month)
    classes << "upcoming-days" if (day > Date.today) && (day.month == date.month)
    classes << "" if day
    classes.empty? ? nil : classes.join(" ")
  end

  def weeks
    first = date.beginning_of_month.beginning_of_week(START_DAY)
    last = date.end_of_month.end_of_week(START_DAY)
    (first..last).to_a.in_groups_of(7)
  end
end
