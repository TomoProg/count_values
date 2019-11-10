require "test_helper"

class CountValuesTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CountValues::VERSION
  end

  def test_counts_all_the_values_an_array
    result = [0, 1, "a", :a, 1, :a, "a", "a"].count_values
    assert_equal({ 0 => 1, 1 => 2, "a" => 3, :a => 2 }, result)
  end

  def test_returns_an_empty_hash_for_an_empty_array
    assert_equal({}, [].count_values)
  end
end
