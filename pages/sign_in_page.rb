require_relative '../driver'

class SignInPage

  URL = 'https://vsco.co/user/login'

  def initialize
    @browser = Driver.instance.browser
    if @browser.window.url == 'about:blank'
      @browser.goto URL
    end
  end

  def method_missing(method, *args, &block)
    @browser.send(method, *args, &block)
  end

  def click_sign_in_button
    @browser.button(id: 'loginButton').click
  end

end
