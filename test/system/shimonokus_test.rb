require "application_system_test_case"

class ShimonokusTest < ApplicationSystemTestCase
  setup do
    @shimonoku = shimonokus(:one)
  end

  test "visiting the index" do
    visit shimonokus_url
    assert_selector "h1", text: "Shimonokus"
  end

  test "creating a Shimonoku" do
    visit shimonokus_url
    click_on "New Shimonoku"

    fill_in "Kamishichi", with: @shimonoku.kamishichi
    fill_in "Shimoshichi", with: @shimonoku.shimoshichi
    click_on "Create Shimonoku"

    assert_text "Shimonoku was successfully created"
    click_on "Back"
  end

  test "updating a Shimonoku" do
    visit shimonokus_url
    click_on "Edit", match: :first

    fill_in "Kamishichi", with: @shimonoku.kamishichi
    fill_in "Shimoshichi", with: @shimonoku.shimoshichi
    click_on "Update Shimonoku"

    assert_text "Shimonoku was successfully updated"
    click_on "Back"
  end

  test "destroying a Shimonoku" do
    visit shimonokus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shimonoku was successfully destroyed"
  end
end
