module CalendarHelper
  def calendar(date = Date.today, personal_days, &block)
    Calendar.new(self, date, block, personal_days).table
  end
end
