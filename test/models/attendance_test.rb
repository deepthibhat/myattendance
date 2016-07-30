require 'test_helper'

class AttendanceTest < ActiveSupport::TestCase

  def setup
    @attendance = Attendance.new(attendance_date: "2016-07-29", timein: "3:00am", timeout: "4:00pm")
  end

  test "attendance should be valid" do
    assert @attendance.valid?
  end

  test "today must be present" do
    @attendance.attendance_date = " "
    assert_not @attendance.valid?
  end

  test "timein must be present" do
    @attendance.timein = " "
    assert_not @attendance.valid?
  end

  test "timeout must be present" do
    @attendance.timeout = " "
    assert_not @attendance.valid?
  end

end
