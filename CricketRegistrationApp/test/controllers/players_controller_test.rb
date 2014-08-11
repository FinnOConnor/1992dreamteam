require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { address: @player.address, contact_phone: @player.contact_phone, date_of_birth: @player.date_of_birth, email: @player.email, first_name: @player.first_name, gender: @player.gender, grade_last_season: @player.grade_last_season, notes: @player.notes, parent_id: @player.parent_id, school_next_year: @player.school_next_year, school_year: @player.school_year, senior: @player.senior, surname: @player.surname, team_id: @player.team_id, team_id_last_season: @player.team_id_last_season }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    patch :update, id: @player, player: { address: @player.address, contact_phone: @player.contact_phone, date_of_birth: @player.date_of_birth, email: @player.email, first_name: @player.first_name, gender: @player.gender, grade_last_season: @player.grade_last_season, notes: @player.notes, parent_id: @player.parent_id, school_next_year: @player.school_next_year, school_year: @player.school_year, senior: @player.senior, surname: @player.surname, team_id: @player.team_id, team_id_last_season: @player.team_id_last_season }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
