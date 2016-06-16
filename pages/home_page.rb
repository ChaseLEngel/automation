require_relative '../driver'
require_relative 'sign_in_page'

class HomePage
  URL = 'https://vsco.co'

  def initialize
    @browser = Driver.instance.browser
    if @browser.window.url == 'about:blank'
      @browser.goto URL
    end
  end

  def method_missing(method, *args, &block)
    @browser.send(method, *args, &block)
  end

  def click_sign_in_link
    @browser.link(text: 'Sign in').click
    SignInPage.new
  end
end
