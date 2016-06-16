require 'watir-webdriver'

class Driver

  include Singleton

  attr_reader :browser

  def initialize
    @browser = Watir::Browser.new
  end

end
