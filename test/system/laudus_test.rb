require "application_system_test_case"

class LaudusTest < ApplicationSystemTestCase
  setup do
    @laudu = laudus(:one)
  end

  test "visiting the index" do
    visit laudus_url
    assert_selector "h1", text: "Laudus"
  end

  test "creating a Laudu" do
    visit laudus_url
    click_on "New Laudu"

    fill_in "Userid", with: @laudu.userId
    click_on "Create Laudu"

    assert_text "Laudu was successfully created"
    click_on "Back"
  end

  test "updating a Laudu" do
    visit laudus_url
    click_on "Edit", match: :first

    fill_in "Userid", with: @laudu.userId
    click_on "Update Laudu"

    assert_text "Laudu was successfully updated"
    click_on "Back"
  end

  test "destroying a Laudu" do
    visit laudus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Laudu was successfully destroyed"
  end
end
