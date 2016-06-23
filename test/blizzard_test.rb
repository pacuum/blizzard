require 'test_helper'

class BlizzardTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Blizzard::VERSION
  end

  def test_blizzard
    ary = [ 1, "str", true, nil, { "key" => "value" } ]
    ary.blizzard

    assert_raises RuntimeError, "can't modify frozen Array" do
      ary.push 2
    end

    assert_raises RuntimeError, "can't modify frozen String" do
      ary[1].gsub!(/s/, "p")
    end

    assert_raises RuntimeError, "can't modify frozen Hash" do
      ary[4]["key2"] = "value2"
    end

    assert_raises RuntimeError, "can't modify frozen String" do
      ary[4]["key"].gsub!(/k/, "h")
    end

  end
  
end
