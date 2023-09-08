require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:breakfast)
  end

  test "visiting the index" do
    visit entries_url
    assert_selector "h1", text: "Foodlog - #{DateTime.now.strftime("%B%e, %Y")}"
  end

  test "should create entry" do
    visit entries_url
    click_on "Create New Entry"

    fill_in "Calories", with: @entry.calories
    fill_in "Carbohydrates", with: @entry.carbohydrates
    fill_in "Fats", with: @entry.fats
    fill_in "Meal type", with: @entry.meal_type
    fill_in "Proteins", with: @entry.proteins
    click_on "Create Entry"

    assert_text "Entry was successfully created"
  end

  test "should update Entry" do
    visit entry_url(@entry)
    click_on "Edit", match: :first

    fill_in "Calories", with: @entry.calories
    fill_in "Carbohydrates", with: @entry.carbohydrates
    fill_in "Fats", with: @entry.fats
    fill_in "Meal type", with: @entry.meal_type
    fill_in "Proteins", with: @entry.proteins
    click_on "Update Entry"

    assert_text "Entry was successfully updated"
  end

  test "should destroy Entry" do
    visit entry_url(@entry)
    click_on "Delete", match: :first

    accept_confirm do end
    
    assert_text "Entry was successfully destroyed"
  end
end
