require 'rubygems'
require 'nokogiri'
require 'open-uri'

PAGE_URL="http://www.klwines.com/content.asp?N=-10314++72++73++93++94++95&display=5&Nr=AND%28p_giftBoxYN%3AN%2COR%28OutofStock%3AN%2CInventory+Location%3ASpecial+Order%29%29&Ns=p_lotGeneratedFromPOYN%7C0%7C%7CQtySoldLast30%7C1%7C%7CQtySoldLifetime%7C1"

page = Nokogiri::HTML(open(PAGE_URL))
puts page.class   # => Nokogiri::HTML::Document

red_urls = page.css("div.result-desc a")
red_urls.each{|link| puts link['href']}