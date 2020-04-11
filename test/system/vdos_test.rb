require "application_system_test_case"

class VdosTest < ApplicationSystemTestCase
  setup do
    @vdo = vdos(:one)
  end

  test "visiting the index" do
    visit vdos_url
    assert_selector "h1", text: "Vdos"
  end

  test "creating a Vdo" do
    visit vdos_url
    click_on "New Vdo"

    fill_in "Body", with: @vdo.body
    fill_in "Title", with: @vdo.title
    click_on "Create Vdo"

    assert_text "Vdo was successfully created"
    click_on "Back"
  end

  test "updating a Vdo" do
    visit vdos_url
    click_on "Edit", match: :first

    fill_in "Body", with: @vdo.body
    fill_in "Title", with: @vdo.title
    click_on "Update Vdo"

    assert_text "Vdo was successfully updated"
    click_on "Back"
  end

  test "destroying a Vdo" do
    visit vdos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vdo was successfully destroyed"
  end
end
