require "application_system_test_case"

class CanchasTest < ApplicationSystemTestCase
  setup do
    @cancha = canchas(:one)
  end

  test "visiting the index" do
    visit canchas_url
    assert_selector "h1", text: "Canchas"
  end

  test "creating a Cancha" do
    visit canchas_url
    click_on "New Cancha"

    fill_in "Ciudad", with: @cancha.ciudad_id
    fill_in "Comercio", with: @cancha.comercio_id
    fill_in "Descripcion", with: @cancha.descripcion
    fill_in "Nombre", with: @cancha.nombre
    fill_in "Precio", with: @cancha.precio
    click_on "Create Cancha"

    assert_text "Cancha was successfully created"
    click_on "Back"
  end

  test "updating a Cancha" do
    visit canchas_url
    click_on "Edit", match: :first

    fill_in "Ciudad", with: @cancha.ciudad_id
    fill_in "Comercio", with: @cancha.comercio_id
    fill_in "Descripcion", with: @cancha.descripcion
    fill_in "Nombre", with: @cancha.nombre
    fill_in "Precio", with: @cancha.precio
    click_on "Update Cancha"

    assert_text "Cancha was successfully updated"
    click_on "Back"
  end

  test "destroying a Cancha" do
    visit canchas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cancha was successfully destroyed"
  end
end
