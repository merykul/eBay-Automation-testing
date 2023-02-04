# frozen string literal: true
#
require_relative 'base_section'
require_relative 'sections/components/header'

class BasePageWithHeader < SitePrism::Page
  section :header, Header, "header[id = 'gh']"
end
