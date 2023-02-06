# frozen_string_literal: true

require_relative '../base_page_with_header'

class AdvancedSearchPage < BasePageWithHeader
  element :find_items_link, :xpath, "//a[contains(text(),'Find items')]"
  element :find_stores_link, :xpath, '//a[@href="/sch/ebayadvsearch?_sofindtype=7"]'
  element :by_seller_link, :xpath, "//a[@href='/sch/ebayadvsearch?_sofindtype=0&_byseller=1#byseller']"
  element :by_item_number_link, :xpath, "//a[contains(text(),'By item number')]"
  element :items_in_store_link, :xpath, "//a[contains(text(),'Items in stores')]"
  element :search_tips_link, :xpath, '//a[@href="/pages/help/buy/contextual/search_tips.html"]', match: :first
  element :advanced_search_options_link, :xpath, "//a[contains(text(),'using advanced search options')]"

  element :enter_item_number_field, :xpath, "//input[@id='_nkw']"
  element :enter_store_name_field, :xpath, "//input[@data-testid='s0-1-17-9[0]-store_search']"
  element :only_show_items_from_checkbox, :xpath, ''
  element :enter_sellers_field, :xpath, "//input[@id='s0-1-17-7[8]-_sasl']"
  element :saved_sellers_list_radiobutton, :xpath, "//input[@id='LH_FavSellers_id']"
  element :sellers_with_ebay_stores_radiobutton, :xpath, "//input[@id='LH_SellerWithStore_id']"

  element :search_button, :xpath, "//button[contains(text(),'Search')]", match: :first
  element :search_button_bottom, :xpath, "//button[@class='btn btn--primary']", match: :first
  element :specific_seller_radio_button, :xpath, "/html/body/div[3]/div/main/form/fieldset[9]/div/div[1]/span/span"

  def click_specific_seller_button
    specific_seller_radio_button.click
  end

  def click_search_tips_link
    search_tips_link.click
  end

  def click_advanced_search_options
    advanced_search_options_link.click
  end

  def click_find_stores_link
    find_stores_link.click
  end

  def click_find_items_link
    find_items_link.click
  end

  def click_by_sellers_link
    by_seller_link.click
  end

  def click_show_items_from_checkbox
    only_show_items_from_checkbox.click
  end

  def click_sellers_with_ebay_stores_radiobutton
    sellers_with_ebay_stores_radiobutton.click
  end

  def enter_in_sellers_field(seller_name)
    enter_sellers_field.set(seller_name)
  end

  def enter_in_store_name_field(store_name)
    enter_store_name_field.set(store_name)
  end

  def enter_in_item_number_field(item_number)
    enter_item_number_field.set(item_number)
  end

  def click_search_button
    search_button.click
  end

  def click_search_button_bottom
    search_button_bottom.click
  end
end
