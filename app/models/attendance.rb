class Attendance < ActiveRecord::Base
  validates :today, presence: true
  validates_date :attendance_date,presence: true, :on_or_before => :today
  validates_time :timein, presence: true
  validates_time :timeout, presence: true
end
