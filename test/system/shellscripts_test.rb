require "application_system_test_case"

class ShellscriptsTest < ApplicationSystemTestCase
  setup do
    @shellscript = shellscripts(:one)
  end

  test "visiting the index" do
    visit shellscripts_url
    assert_selector "h1", text: "Shellscripts"
  end

  test "creating a Shellscript" do
    visit shellscripts_url
    click_on "New Shellscript"

    fill_in "App", with: @shellscript.app
    fill_in "Key", with: @shellscript.key
    fill_in "Note", with: @shellscript.note
    click_on "Create Shellscript"

    assert_text "Shellscript was successfully created"
    click_on "Back"
  end

  test "updating a Shellscript" do
    visit shellscripts_url
    click_on "Edit", match: :first

    fill_in "App", with: @shellscript.app
    fill_in "Key", with: @shellscript.key
    fill_in "Note", with: @shellscript.note
    click_on "Update Shellscript"

    assert_text "Shellscript was successfully updated"
    click_on "Back"
  end

  test "destroying a Shellscript" do
    visit shellscripts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shellscript was successfully destroyed"
  end
end
