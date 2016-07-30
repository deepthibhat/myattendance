require 'test_helper'

class EmployeTest <ActiveSupport::TestCase
  def setup
    @employe = Employe.new(name: "john", email: "john@example.com")
  end

  test "employe should be valid" do
    assert @employe.valid?
  end

  test "employe name should be present" do
    @employe.name = " "
    assert_not @employe.valid?
  end

  test "employe address should be present" do
    @employe.address = " "
    assert_not @employe.valid?
  end

  test "employe email should be present" do
    @employe.email = " "
    assert_not @employe.valid?
  end

  test "employe gender should be present" do
    @employe.gender = " "
    assert_not @employe.valid?
  end

  test "employe phone_number should be present" do
    @employe.phone_number = " "
    assert_not @employe.valid?
  end
end
