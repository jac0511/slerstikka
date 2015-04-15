require 'test_helper'

class RetseptsControllerTest < ActionController::TestCase
  setup do
    @retsept = retsepts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retsepts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retsept" do
    assert_difference('Retsept.count') do
      post :create, retsept: { aika: @retsept.aika, ainekset: @retsept.ainekset, kuvaus: @retsept.kuvaus, luokka: @retsept.luokka, nimi: @retsept.nimi, ohjeet: @retsept.ohjeet, vaativuus: @retsept.vaativuus }
    end

    assert_redirected_to retsept_path(assigns(:retsept))
  end

  test "should show retsept" do
    get :show, id: @retsept
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retsept
    assert_response :success
  end

  test "should update retsept" do
    patch :update, id: @retsept, retsept: { aika: @retsept.aika, ainekset: @retsept.ainekset, kuvaus: @retsept.kuvaus, luokka: @retsept.luokka, nimi: @retsept.nimi, ohjeet: @retsept.ohjeet, vaativuus: @retsept.vaativuus }
    assert_redirected_to retsept_path(assigns(:retsept))
  end

  test "should destroy retsept" do
    assert_difference('Retsept.count', -1) do
      delete :destroy, id: @retsept
    end

    assert_redirected_to retsepts_path
  end
end
