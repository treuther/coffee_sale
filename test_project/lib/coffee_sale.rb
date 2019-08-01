require_relative "./coffee_sale/version"
require_relative "./coffee_sale/cli"
require_relative "./coffee_sale/coffee"
require_relative "./coffee_sale/scraper"

require 'nokogiri'
require 'pry'
require 'colorize'

module CoffeeSale
  class Error < StandardError; end
  # Your code goes here...
end
