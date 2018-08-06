require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase

  def setup
    @relationship = Relationship.new(liker_id: users(:michael).id,
                                     likee_id: users(:archer).id)
  end

  test "should be valid" do
    assert @relationship.valid?
  end

  test "should require a liker_id" do
    @relationship.liker_id = nil
    assert_not @relationship.valid?
  end

  test "should require a likee_id" do
    @relationship.likee_id = nil
    assert_not @relationship.valid?
  end

end
