require 'test_helper'

class VittuilusControllerTest < ActionController::TestCase
  setup do
    @vittuilu = vittuilus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vittuilus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vittuilu" do
    assert_difference('Vittuilu.count') do
      post :create, vittuilu: { arvostus: @vittuilu.arvostus, retsept_id: @vittuilu.retsept_id, teksti: @vittuilu.teksti, user_nimi: @vittuilu.user_nimi }
    end

    assert_redirected_to vittuilu_path(assigns(:vittuilu))
  end

  test "should show vittuilu" do
    get :show, id: @vittuilu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vittuilu
    assert_response :success
  end

  test "should update vittuilu" do
    patch :update, id: @vittuilu, vittuilu: { arvostus: @vittuilu.arvostus, retsept_id: @vittuilu.retsept_id, teksti: @vittuilu.teksti, user_nimi: @vittuilu.user_nimi }
    assert_redirected_to vittuilu_path(assigns(:vittuilu))
  end

  test "should destroy vittuilu" do
    assert_difference('Vittuilu.count', -1) do
      delete :destroy, id: @vittuilu
    end

    assert_redirected_to vittuilus_path
  end
end
