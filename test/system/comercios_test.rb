require "application_system_test_case"

class ComerciosTest < ApplicationSystemTestCase
  setup do
    @comercio = comercios(:one)
  end

  test "visiting the index" do
    visit comercios_url
    assert_selector "h1", text: "Comercios"
  end

  test "creating a Comercio" do
    visit comercios_url
    click_on "New Comercio"

    fill_in "Admin", with: @comercio.admin_id
    fill_in "Ciudad", with: @comercio.ciudad_id
    fill_in "Direccion", with: @comercio.direccion
    fill_in "Latitud", with: @comercio.latitud
    fill_in "Longitud", with: @comercio.longitud
    fill_in "Nombre", with: @comercio.nombre
    fill_in "Telefono", with: @comercio.telefono
    click_on "Create Comercio"

    assert_text "Comercio was successfully created"
    click_on "Back"
  end

  test "updating a Comercio" do
    visit comercios_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @comercio.admin_id
    fill_in "Ciudad", with: @comercio.ciudad_id
    fill_in "Direccion", with: @comercio.direccion
    fill_in "Latitud", with: @comercio.latitud
    fill_in "Longitud", with: @comercio.longitud
    fill_in "Nombre", with: @comercio.nombre
    fill_in "Telefono", with: @comercio.telefono
    click_on "Update Comercio"

    assert_text "Comercio was successfully updated"
    click_on "Back"
  end

  test "destroying a Comercio" do
    visit comercios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comercio was successfully destroyed"
  end
end
