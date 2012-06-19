require 'test_helper'

class ScorecastsControllerTest < ActionController::TestCase
  setup do
    @scorecast = scorecasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scorecasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scorecast" do
    assert_difference('Scorecast.count') do
      post :create, scorecast: { away_score: @scorecast.away_score, gameweek_no: @scorecast.gameweek_no, home_score: @scorecast.home_score, points: @scorecast.points, user_id: @scorecast.user_id }
    end

    assert_redirected_to scorecast_path(assigns(:scorecast))
  end

  test "should show scorecast" do
    get :show, id: @scorecast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scorecast
    assert_response :success
  end

  test "should update scorecast" do
    put :update, id: @scorecast, scorecast: { away_score: @scorecast.away_score, gameweek_no: @scorecast.gameweek_no, home_score: @scorecast.home_score, points: @scorecast.points, user_id: @scorecast.user_id }
    assert_redirected_to scorecast_path(assigns(:scorecast))
  end

  test "should destroy scorecast" do
    assert_difference('Scorecast.count', -1) do
      delete :destroy, id: @scorecast
    end

    assert_redirected_to scorecasts_path
  end
end
