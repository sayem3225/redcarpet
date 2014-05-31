# coding: UTF-8
Encoding.default_internal = 'UTF-8' if defined? Encoding

gem 'test-unit', '>= 2' # necessary when not using bundle exec

require 'test/unit'
require 'nokogiri'

require 'redcarpet'
require 'redcarpet/render_strip'
require 'redcarpet/render_man'

class Redcarpet::TestCase < Test::Unit::TestCase
end

def html_equal(html_a, html_b)
  assert_equal Nokogiri::HTML::DocumentFragment.parse(html_a).to_html,
    Nokogiri::HTML::DocumentFragment.parse(html_b).to_html
end
