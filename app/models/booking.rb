class Booking < ApplicationRecord

  STATUS_STATES = %w(APPROVED DENIED PENDING).freeze

  validates :end_date, :start_date, :status, presence: true
  validates :status, inclusion: STATUS_STATES
  validate :start_must_come_before_end
  validate :does_not_overlap_approved_request

  belongs_to :house
  belongs_to :user

  def approve!
    raise 'not pending' unless self.status == 'PENDING'
    transaction do
      self.status = 'APPROVED'
      self.save!

      overlapping_pending_requests.each do |req|
        req.update!(status: 'DENIED')
      end
    end
  end

  def approved?
    self.status == 'APPROVED'
  end

  def denied?
    self.status == 'DENIED'
  end

  def deny!
    self.status = 'DENIED'
    self.save!
  end

  def pending?
    self.status == 'PENDING'
  end

  private

  def assign_pending_status
    self.status ||= 'PENDING'
  end

  def overlapping_requests
    Booking.where.not(id: self.id)
           .where(house_id: house_id)
           .where.not('start_date > :end_date OR end_date < :start_date',
                       start_date: start_date, end_date: end_date)
  end

  def overlapping_approved_requests
    overlapping_requests.where('status = \'APPROVED\'')
  end

  def overlapping_pending_requests
    overlapping_requests.where('status = \'PENDING\'')
  end

  def does_not_overlap_approved_request
    return if self.denied?

    unless overlapping_pending_requests.empty?
      errors[:base] <<
        'Request conflicts with existing approved request'
    end
  end

  def start_must_come_before_end
    errors[:start_date] << 'must specify a start date' unless start_date
    errors[:end_date] << 'must specify an end date' unless end_date
    errors[:start_date] << 'must come before end date' if start_date > end_date
  end       
end
