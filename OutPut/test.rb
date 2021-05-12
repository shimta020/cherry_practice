require 'date'

class Calendar
  def initialize(today)
    @today = today
  end

  def output
    header + "\n" + calendar_body
  end

  private

  def month
    @today.month
  end

  def year
    @today.year
  end

  def start_date
    Date.new(year, month, 1)
  end

  def last_date
    start_date.next_month.prev_day
  end

  def year_and_month
    @today.strftime('%B %Y').center(day_of_week.size)
  end

  def day_of_week
    ['Su','Mo','Tu','We','Th','Fr','Sa'].join(' ')
  end

  def date_in_month
    (start_date..last_date)
  end

  def header
    year_and_month + "\n" + day_of_week
  end

  def calendar_body
    date_in_month.each_with_object(Array.new(7, '  ')) do |date, result|
      result[date.wday] = date.day.to_s.rjust(2,' ')
      if date.wday == 6
        result.join(' ')
      elsif date.day == last_date.day
        result[0..date.wday].join(' ')
      end
    end
  end
end

