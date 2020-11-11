require "application_system_test_case"

class PionersTest < ApplicationSystemTestCase
  setup do
    @pioner = pioners(:one)
  end

  test "visiting the index" do
    visit pioners_url
    assert_selector "h1", text: "Pioners"
  end

  test "creating a Pioner" do
    visit pioners_url
    click_on "New Pioner"

    fill_in "\", with: @pioner.\
    fill_in "First name", with: @pioner.first_name
    fill_in "Last-name", with: @pioner.last-name
    click_on "Create Pioner"

    assert_text "Pioner was successfully created"
    click_on "Back"
  end

  test "updating a Pioner" do
    visit pioners_url
    click_on "Edit", match: :first

    fill_in "\", with: @pioner.\
    fill_in "First name", with: @pioner.first_name
    fill_in "Last-name", with: @pioner.last-name
    click_on "Update Pioner"

    assert_text "Pioner was successfully updated"
    click_on "Back"
  end

  test "destroying a Pioner" do
    visit pioners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pioner was successfully destroyed"
  end
end
