require "application_system_test_case"

class MicroappDbsTest < ApplicationSystemTestCase
  setup do
    @microapp_db = microapp_dbs(:one)
  end

  test "visiting the index" do
    visit microapp_dbs_url
    assert_selector "h1", text: "Microapp Dbs"
  end

  test "creating a Microapp db" do
    visit microapp_dbs_url
    click_on "New Microapp Db"

    fill_in "Author", with: @microapp_db.Author
    fill_in "Creationdate", with: @microapp_db.CreationDate
    fill_in "Title", with: @microapp_db.Title
    click_on "Create Microapp db"

    assert_text "Microapp db was successfully created"
    click_on "Back"
  end

  test "updating a Microapp db" do
    visit microapp_dbs_url
    click_on "Edit", match: :first

    fill_in "Author", with: @microapp_db.Author
    fill_in "Creationdate", with: @microapp_db.CreationDate
    fill_in "Title", with: @microapp_db.Title
    click_on "Update Microapp db"

    assert_text "Microapp db was successfully updated"
    click_on "Back"
  end

  test "destroying a Microapp db" do
    visit microapp_dbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Microapp db was successfully destroyed"
  end
end
