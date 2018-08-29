require 'rails_helper'

describe 'user visits /' do
  describe 'can click link locate and land on /search' do
    it 'sees 10 stations within 6 miles of 80203' do
      visit "/"

      fill_in "q", with: "80203"

      click_on "Locate"

      expect(current_path).to eq("/search")

      within(first(".station")) do
        expect(page).to have_css(".name")
        expect(page).to have_content("UDR")
        expect(page).to have_css(".address")
        expect(page).to have_content("800 Acoma St")
        expect(page).to have_css(".fuel_types")
        expect(page).to have_content("ELEC")
        expect(page).to have_css(".distance")
        expect(page).to have_content(".31422")
        expect(page).to have_css(".access_times")
        expect(page).to have_content('24 hours daily')
      end
    end
  end
end
