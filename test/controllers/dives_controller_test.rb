require 'test_helper'

class DivesControllerTest < ActionController::TestCase
  setup do
    @dive = dives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dive" do
    assert_difference('Dive.count') do
      post :create, dive: { air_in: @dive.air_in, air_out: @dive.air_out, air_temperature: @dive.air_temperature, bottom_time: @dive.bottom_time, breathing_medium: @dive.breathing_medium, category_description: @dive.category_description, comments: @dive.comments, conditions: @dive.conditions, current: @dive.current, dive_coordinator: @dive.dive_coordinator, dive_date: @dive.dive_date, dive_number: @dive.dive_number, dive_type: @dive.dive_type, effective_bottom_time: @dive.effective_bottom_time, environment: @dive.environment, equipment: @dive.equipment, latitude: @dive.latitude, longitude: @dive.longitude, max_depth: @dive.max_depth, no_decompression_limit: @dive.no_decompression_limit, organistion: @dive.organistion, repeitive_factor: @dive.repeitive_factor, repetitive_group: @dive.repetitive_group, role: @dive.role, safety_stop: @dive.safety_stop, signed: @dive.signed, site_location: @dive.site_location, surface_interval: @dive.surface_interval, surface_swim: @dive.surface_swim, tasks: @dive.tasks, tide: @dive.tide, time_in: @dive.time_in, time_out: @dive.time_out, user_id: @dive.user_id, vessel: @dive.vessel, visiability: @dive.visiability, water_temperature: @dive.water_temperature, weather: @dive.weather, wet_time: @dive.wet_time, wind: @dive.wind }
    end

    assert_redirected_to dive_path(assigns(:dive))
  end

  test "should show dive" do
    get :show, id: @dive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dive
    assert_response :success
  end

  test "should update dive" do
    patch :update, id: @dive, dive: { air_in: @dive.air_in, air_out: @dive.air_out, air_temperature: @dive.air_temperature, bottom_time: @dive.bottom_time, breathing_medium: @dive.breathing_medium, category_description: @dive.category_description, comments: @dive.comments, conditions: @dive.conditions, current: @dive.current, dive_coordinator: @dive.dive_coordinator, dive_date: @dive.dive_date, dive_number: @dive.dive_number, dive_type: @dive.dive_type, effective_bottom_time: @dive.effective_bottom_time, environment: @dive.environment, equipment: @dive.equipment, latitude: @dive.latitude, longitude: @dive.longitude, max_depth: @dive.max_depth, no_decompression_limit: @dive.no_decompression_limit, organistion: @dive.organistion, repeitive_factor: @dive.repeitive_factor, repetitive_group: @dive.repetitive_group, role: @dive.role, safety_stop: @dive.safety_stop, signed: @dive.signed, site_location: @dive.site_location, surface_interval: @dive.surface_interval, surface_swim: @dive.surface_swim, tasks: @dive.tasks, tide: @dive.tide, time_in: @dive.time_in, time_out: @dive.time_out, user_id: @dive.user_id, vessel: @dive.vessel, visiability: @dive.visiability, water_temperature: @dive.water_temperature, weather: @dive.weather, wet_time: @dive.wet_time, wind: @dive.wind }
    assert_redirected_to dive_path(assigns(:dive))
  end

  test "should destroy dive" do
    assert_difference('Dive.count', -1) do
      delete :destroy, id: @dive
    end

    assert_redirected_to dives_path
  end
end
