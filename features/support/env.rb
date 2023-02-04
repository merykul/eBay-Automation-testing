# frozen_string_literal: true

require_relative '../../features/support/config/configuration'
require_relative '../../page_objects/pages/advanced_search'
require_relative '../../page_objects/pages/home_page'

require "#{File.dirname(__FILE__)}/config/configuration"
BASE_URL = Configuration['base_url']
LOGIN = Configuration['login']
PASSWORD = Configuration['password']
FIRST_NAME = Configuration['first_name']
TOKEN = Configuration['token']