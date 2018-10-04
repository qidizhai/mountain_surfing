class Booking < ApplicationRecord
  STATUS_STATES = %w(APPROVED DENIED PENDING).freeze

  validates :end_date, :start_date, :status, presence: true
  validates :status, inclusion: STATUS_STATES

  belongs_to :house
  belongs_to :user

  def start_date?
    if self.start_date == nil
      return false
    else
      return true
    end
  end

  def end_date?
    if self.end_date == nil
      return false
    else
      return true
    end
  end

  def start_before_today?
    if self.start_date < Date.current
      return true
    else
      return false
    end
  end

  def hasbooked?
    start_date = self.start_date
    end_date = self.end_date
    self.house.bookings.each do |booking|
      if (booking.start_date > end_date || booking.end_date < start_date) == false
        return true
      end
    end
    return false
  end

  def start_after_end?
    if self.start_date >= self.end_date
      return true
    else
      return false
    end
  end
end
