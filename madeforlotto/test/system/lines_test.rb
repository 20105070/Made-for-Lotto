require "application_system_test_case"

class LinesTest < ApplicationSystemTestCase
  setup do
    @line = lines(:one)
  end

  test "should create line" do
    visit makelines_url
    click_on "Create Line"
    assert_text "Line was successfully created"
  end

  test "should update Line" do
    visit line_url(@line)
    click_on "Edit this line", match: :first
    click_on "Update Line"
    assert_text "Line was successfully updated"
  end

  test "should destroy Line" do
    visit line_url(@line)
    click_on "Destroy this line", match: :first
    assert_text "Line was successfully destroyed"
  end
end
