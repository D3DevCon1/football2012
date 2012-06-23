require 'test_helper'

class PredictionsControllerTest < ActionController::TestCase
  setup do
    @prediction = predictions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:predictions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prediction" do
    assert_difference('Prediction.count') do
      post :create, prediction: { gameweek_no: @prediction.gameweek_no, match10: @prediction.match10, match1: @prediction.match1, match2: @prediction.match2, match3: @prediction.match3, match4: @prediction.match4, match5: @prediction.match5, match6: @prediction.match6, match7: @prediction.match7, match8: @prediction.match8, match9: @prediction.match9, user_id: @prediction.user_id }
    end

    assert_redirected_to prediction_path(assigns(:prediction))
  end

  test "should show prediction" do
    get :show, id: @prediction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prediction
    assert_response :success
  end

  test "should update prediction" do
    put :update, id: @prediction, prediction: { gameweek_no: @prediction.gameweek_no, match10: @prediction.match10, match1: @prediction.match1, match2: @prediction.match2, match3: @prediction.match3, match4: @prediction.match4, match5: @prediction.match5, match6: @prediction.match6, match7: @prediction.match7, match8: @prediction.match8, match9: @prediction.match9, user_id: @prediction.user_id }
    assert_redirected_to prediction_path(assigns(:prediction))
  end

  test "should destroy prediction" do
    assert_difference('Prediction.count', -1) do
      delete :destroy, id: @prediction
    end

    assert_redirected_to predictions_path
  end
end
