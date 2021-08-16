require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the home page" do
    visit '/'
  
    assert_selector "h1", text: "Flats - Batch 689"
  end

  test "visiting a specific flat" do
    visit 'flat/145'
  
    assert_selector "h1", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
  end
end
