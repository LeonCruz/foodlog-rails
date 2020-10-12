require "test_helper"

class EntryTest < ActiveSupport::TestCase
  setup do
    @category = categories(:one)
  end

  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 20, fats: 10, calories: 400,
                      category: @category)
    assert entry.save
  end
end
