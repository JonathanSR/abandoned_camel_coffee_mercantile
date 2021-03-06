require 'rails_helper'

  describe "when a user visits index page" do
    it "user adds item to cart" do
    bean = Bean.create(title:"coffee", description:"good", price:1, image:"123")

      visit beans_path

      click_button "Add Item"

      expect(page).to have_content("1 coffee added to cart")
  end
end
