require "test_helper"

class MicroappDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microapp_db = microapp_dbs(:one)
  end

  test "should get index" do
    get microapp_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_microapp_db_url
    assert_response :success
  end

  test "should create microapp_db" do
    assert_difference('MicroappDb.count') do
      post microapp_dbs_url, params: { microapp_db: { Author: @microapp_db.Author, CreationDate: @microapp_db.CreationDate, Title: @microapp_db.Title } }
    end

    assert_redirected_to microapp_db_url(MicroappDb.last)
  end

  test "should show microapp_db" do
    get microapp_db_url(@microapp_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_microapp_db_url(@microapp_db)
    assert_response :success
  end

  test "should update microapp_db" do
    patch microapp_db_url(@microapp_db), params: { microapp_db: { Author: @microapp_db.Author, CreationDate: @microapp_db.CreationDate, Title: @microapp_db.Title } }
    assert_redirected_to microapp_db_url(@microapp_db)
  end

  test "should destroy microapp_db" do
    assert_difference('MicroappDb.count', -1) do
      delete microapp_db_url(@microapp_db)
    end

    assert_redirected_to microapp_dbs_url
  end
end
