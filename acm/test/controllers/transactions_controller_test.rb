require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { amount: @transaction.amount, create_user: @transaction.create_user, created_at: @transaction.created_at, deleted_at: @transaction.deleted_at, note: @transaction.note, sale_id: @transaction.sale_id, source_account_id: @transaction.source_account_id, target_account_id: @transaction.target_account_id, transact_on: @transaction.transact_on, update_user: @transaction.update_user, updated_at: @transaction.updated_at }
    end

    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    patch :update, id: @transaction, transaction: { amount: @transaction.amount, create_user: @transaction.create_user, created_at: @transaction.created_at, deleted_at: @transaction.deleted_at, note: @transaction.note, sale_id: @transaction.sale_id, source_account_id: @transaction.source_account_id, target_account_id: @transaction.target_account_id, transact_on: @transaction.transact_on, update_user: @transaction.update_user, updated_at: @transaction.updated_at }
    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_redirected_to transactions_path
  end
end
