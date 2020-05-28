require "application_system_test_case"

class DestroysTest < ApplicationSystemTestCase
  setup do
    @destroy = destroys(:one)
  end

  test "visiting the index" do
    visit destroys_url
    assert_selector "h1", text: "Destroys"
  end

  test "creating a Destroy" do
    visit destroys_url
    click_on "New Destroy"

    click_on "Create Destroy"

    assert_text "Destroy was successfully created"
    click_on "Back"
  end

  test "updating a Destroy" do
    visit destroys_url
    click_on "Edit", match: :first

    click_on "Update Destroy"

    assert_text "Destroy was successfully updated"
    click_on "Back"
  end

  test "destroying a Destroy" do
    visit destroys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Destroy was successfully destroyed"
  end
end
