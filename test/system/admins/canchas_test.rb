require "application_system_test_case"

class Admins::CanchasTest < ApplicationSystemTestCase
  setup do
    @admins_cancha = admins_canchas(:one)
  end

  test "visiting the index" do
    visit admins_canchas_url
    assert_selector "h1", text: "Admins/Canchas"
  end

  test "creating a Cancha" do
    visit admins_canchas_url
    click_on "New Admins/Cancha"

    click_on "Create Cancha"

    assert_text "Cancha was successfully created"
    click_on "Back"
  end

  test "updating a Cancha" do
    visit admins_canchas_url
    click_on "Edit", match: :first

    click_on "Update Cancha"

    assert_text "Cancha was successfully updated"
    click_on "Back"
  end

  test "destroying a Cancha" do
    visit admins_canchas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cancha was successfully destroyed"
  end
end
