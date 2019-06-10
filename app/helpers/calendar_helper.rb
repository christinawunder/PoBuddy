module CalendarHelper
  def calendar(date, personal_days, &block)
    Calendar.new(self, date, block, personal_days).table
  end
end
