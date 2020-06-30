require "application_system_test_case"

class ShrtctkiesTest < ApplicationSystemTestCase
  setup do
    @shrtctky = shrtctkies(:one)
  end

  test "visiting the index" do
    visit shrtctkies_url
    assert_selector "h1", text: "Shrtctkies"
  end

  test "creating a Shrtctky" do
    visit shrtctkies_url
    click_on "New Shrtctky"

    fill_in "Key", with: @shrtctky.key
    fill_in "Name", with: @shrtctky.name
    fill_in "Note", with: @shrtctky.note
    click_on "Create Shrtctky"

    assert_text "Shrtctky was successfully created"
    click_on "Back"
  end

  test "updating a Shrtctky" do
    visit shrtctkies_url
    click_on "Edit", match: :first

    fill_in "Key", with: @shrtctky.key
    fill_in "Name", with: @shrtctky.name
    fill_in "Note", with: @shrtctky.note
    click_on "Update Shrtctky"

    assert_text "Shrtctky was successfully updated"
    click_on "Back"
  end

  test "destroying a Shrtctky" do
    visit shrtctkies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shrtctky was successfully destroyed"
  end
end
