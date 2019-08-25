require "application_system_test_case"

class KaminokusTest < ApplicationSystemTestCase
  setup do
    @kaminoku = kaminokus(:one)
  end

  test "visiting the index" do
    visit kaminokus_url
    assert_selector "h1", text: "Kaminokus"
  end

  test "creating a Kaminoku" do
    visit kaminokus_url
    click_on "New Kaminoku"

    fill_in "Kamigo", with: @kaminoku.kamigo
    fill_in "Nakashichi", with: @kaminoku.nakashichi
    fill_in "Shimogo", with: @kaminoku.shimogo
    click_on "Create Kaminoku"

    assert_text "Kaminoku was successfully created"
    click_on "Back"
  end

  test "updating a Kaminoku" do
    visit kaminokus_url
    click_on "Edit", match: :first

    fill_in "Kamigo", with: @kaminoku.kamigo
    fill_in "Nakashichi", with: @kaminoku.nakashichi
    fill_in "Shimogo", with: @kaminoku.shimogo
    click_on "Update Kaminoku"

    assert_text "Kaminoku was successfully updated"
    click_on "Back"
  end

  test "destroying a Kaminoku" do
    visit kaminokus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kaminoku was successfully destroyed"
  end
end
