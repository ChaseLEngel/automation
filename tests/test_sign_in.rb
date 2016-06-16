require 'minitest/autorun'
require_relative '../driver'
require_relative '../pages/sign_in_page'
require_relative '../pages/home_page'

class TestSignIn < Minitest::Test
  def setup
    home_page = HomePage.new
    @sign_in_page = home_page.click_sign_in_link
  end

  def test_title
   assert_equal @sign_in_page.title, 'Sign In | VSCO'
  end

  def test_empty_sign_in
    @sign_in_page.click_sign_in_button
  end

  def teardown
    Driver.instance.browser.close
  end

end
