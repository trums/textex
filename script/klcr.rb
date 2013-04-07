require 'rubygems'
require 'nokogiri'
require 'open-uri'

PAGE_URL=""

page = Nokogiri::HTML(open(PAGE_URL))
puts page.class   # => Nokogiri::HTML::Document

red_urls = page.css("div.result-desc a")
red_urls.each{|link| puts link['href']}