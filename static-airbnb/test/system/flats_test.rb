require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  #test "visiting the index" do
  #  visit flats_url
  #    assert_selector "h1", text: "Flats"
  #end

  test "going to the index page" do
    visit root_path
    assert_selector "h1", text: "Beautiful flats"
  end

  test "there is at least one flat" do
    visit root_path
    assert_selector "h5", class: "card-title"
  end

  test "there is a flat title on showpage" do
    visit flat_path(1)
    assert_selector "h1", class: "flat-title"
  end
end
