require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < Minitest::Test

  def setup
    @person = Person.new("Jon", 28)
  end

  def test_can_get_person_name
    assert_equal("Jon", @person.name)
  end

  def test_can_get_person_age
    assert_equal(28, @person.age)
  end

end
