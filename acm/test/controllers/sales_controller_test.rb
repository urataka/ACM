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
      post :create, sale: { attended_on: @sale.attended_on, canceled_at: @sale.canceled_at, created_at: @sale.created_at, created_user: @sale.created_user, customer_id: @sale.customer_id, deleted_at: @sale.deleted_at, menu_id: @sale.menu_id, note: @sale.note, paid_flg: @sale.paid_flg, payment: @sale.payment, quantity: @sale.quantity, updated_at: @sale.updated_at, updated_user: @sale.updated_user }
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
    patch :update, id: @sale, sale: { attended_on: @sale.attended_on, canceled_at: @sale.canceled_at, created_at: @sale.created_at, created_user: @sale.created_user, customer_id: @sale.customer_id, deleted_at: @sale.deleted_at, menu_id: @sale.menu_id, note: @sale.note, paid_flg: @sale.paid_flg, payment: @sale.payment, quantity: @sale.quantity, updated_at: @sale.updated_at, updated_user: @sale.updated_user }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
