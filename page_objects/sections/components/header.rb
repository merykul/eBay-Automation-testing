# frozen string literal: true

require_relative '../../base_section'

class Header < BaseSection
  element :sign_in_link, :xpath, "//a[href='https://signin.ebay.com/ws/eBayISAPI.dll?SignIn&ru=https%3A%2F%2Fwww.ebay.com%2F']"
  element :daily_deals_link, :xpath, "//a[@data-sp='m570.l3188']"
  element :help_and_contact_link, :xpath, "//a[@data-sp='m570.l1545']"
  element :brand_outlet_link, :xpath, "//a[@data-sp='m570.l47233']"
  element :sell_link, :xpath, "//a[@data-sp='m570.l1528']"
  element :my_ebay_dropdown_menu, :xpath, "//a[@title='My eBay']"
  element :notification_icon, :xpath, '//i[@id="gh-Alerts-i"]'
  element :basket_icon, :xpath, '//svg[@class="gh-cart-icon"]'
  element :logo, :xpath, '//a[@id="gh-la"]'
  element :shop_by_category_dropdown_menu, :xpath, '//i[@id="gh-shop-ei"]'
  element :search_input_field, :xpath, '//input[@class="gh-tb ui-autocomplete-input"]'
  element :category_dropdown_menu, :xpath, '//select[@id="gh-cat"]'
  element :search_button, :xpath, '//input[@type="submit"]'
  element :advanced_search_link, :xpath, '//a[@id="gh-as-a"]'
  element :watchlist_dropdown, :xpath, '//a[@title="Watchlist"]'

  def click_advanced_search_link
    advanced_search_link.click
  end

  def click_sign_in_link
    sign_in_link.click
  end

  def click_search_button
    search_button.click
  end

  def enter_in_search_field(search_word)
    search_input_field.set(search_word)
  end
end
