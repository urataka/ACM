require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { address: @customer.address, created_at: @customer.created_at, created_user: @customer.created_user, email: @customer.email, identifier: @customer.identifier, mei: @customer.mei, mei: @customer.mei, note: @customer.note, offered_on: @customer.offered_on, postcode: @customer.postcode, sei_kana: @customer.sei_kana, sei_kanji: @customer.sei_kanji, tel: @customer.tel, updated_at: @customer.updated_at, updated_user: @customer.updated_user, url: @customer.url }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { address: @customer.address, created_at: @customer.created_at, created_user: @customer.created_user, email: @customer.email, identifier: @customer.identifier, mei: @customer.mei, mei: @customer.mei, note: @customer.note, offered_on: @customer.offered_on, postcode: @customer.postcode, sei_kana: @customer.sei_kana, sei_kanji: @customer.sei_kanji, tel: @customer.tel, updated_at: @customer.updated_at, updated_user: @customer.updated_user, url: @customer.url }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
