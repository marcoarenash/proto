require "application_system_test_case"

class MesTest < ApplicationSystemTestCase
  setup do
    @me = mes(:one)
  end

  test "visiting the index" do
    visit mes_url
    assert_selector "h1", text: "Mes"
  end

  test "creating a Me" do
    visit mes_url
    click_on "New Me"

    fill_in "Esfuerzos", with: @me.esfuerzos
    fill_in "Que Dice Y Hace", with: @me.que_dice_y_hace
    fill_in "Que Oye", with: @me.que_oye
    fill_in "Que Piensa Y Siente", with: @me.que_piensa_y_siente
    fill_in "Que Ve", with: @me.que_ve
    fill_in "Resultados", with: @me.resultados
    fill_in "User", with: @me.user_id
    click_on "Create Me"

    assert_text "Me was successfully created"
    click_on "Back"
  end

  test "updating a Me" do
    visit mes_url
    click_on "Edit", match: :first

    fill_in "Esfuerzos", with: @me.esfuerzos
    fill_in "Que Dice Y Hace", with: @me.que_dice_y_hace
    fill_in "Que Oye", with: @me.que_oye
    fill_in "Que Piensa Y Siente", with: @me.que_piensa_y_siente
    fill_in "Que Ve", with: @me.que_ve
    fill_in "Resultados", with: @me.resultados
    fill_in "User", with: @me.user_id
    click_on "Update Me"

    assert_text "Me was successfully updated"
    click_on "Back"
  end

  test "destroying a Me" do
    visit mes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Me was successfully destroyed"
  end
end
