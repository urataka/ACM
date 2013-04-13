require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post :create, sale: { cancel: @sale.cancel, created_at: @sale.created_at, created_user: @sale.created_user, customer_id: @sale.customer_id, date: @sale.date, deleted_at: @sale.deleted_at, memo: @sale.memo, menu_id: @sale.menu_id, price: @sale.price, quantity: @sale.quantity, updated_at: @sale.updated_at, updated_user: @sale.updated_user }
    end

    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should show sale" do
    get :show, id: @sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale
    assert_response :success
  end

  test "should update sale" do
    patch :update, id: @sale, sale: { cancel: @sale.cancel, created_at: @sale.created_at, created_user: @sale.created_user, customer_id: @sale.customer_id, date: @sale.date, deleted_at: @sale.deleted_at, memo: @sale.memo, menu_id: @sale.menu_id, price: @sale.price, quantity: @sale.quantity, updated_at: @sale.updated_at, updated_user: @sale.updated_user }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
