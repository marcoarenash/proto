require 'test_helper'

class MesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @me = mes(:one)
  end

  test "should get index" do
    get mes_url
    assert_response :success
  end

  test "should get new" do
    get new_me_url
    assert_response :success
  end

  test "should create me" do
    assert_difference('Me.count') do
      post mes_url, params: { me: { esfuerzos: @me.esfuerzos, que_dice_y_hace: @me.que_dice_y_hace, que_oye: @me.que_oye, que_piensa_y_siente: @me.que_piensa_y_siente, que_ve: @me.que_ve, resultados: @me.resultados, user_id: @me.user_id } }
    end

    assert_redirected_to me_url(Me.last)
  end

  test "should show me" do
    get me_url(@me)
    assert_response :success
  end

  test "should get edit" do
    get edit_me_url(@me)
    assert_response :success
  end

  test "should update me" do
    patch me_url(@me), params: { me: { esfuerzos: @me.esfuerzos, que_dice_y_hace: @me.que_dice_y_hace, que_oye: @me.que_oye, que_piensa_y_siente: @me.que_piensa_y_siente, que_ve: @me.que_ve, resultados: @me.resultados, user_id: @me.user_id } }
    assert_redirected_to me_url(@me)
  end

  test "should destroy me" do
    assert_difference('Me.count', -1) do
      delete me_url(@me)
    end

    assert_redirected_to mes_url
  end
end
