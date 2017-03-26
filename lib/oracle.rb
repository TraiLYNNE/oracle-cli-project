require 'open-uri'
require 'nokogiri'
require 'pry'

require "oracle/version"
require 'oracle/cli'
require 'oracle/hero'
require 'oracle/scraper'

Scraper.new("Bruce_Wayne_(Prime_Earth)").create_hero_hash
Scraper.new("Arthur_Curry_(Prime_Earth)").create_hero_hash
Scraper.new("Bartholomew_Allen_(Prime_Earth)").create_hero_hash
Scraper.new("Oliver_Queen_(Prime_Earth)").create_hero_hash
Scraper.new("John_Stewart_(Prime_Earth)").create_hero_hash
Scraper.new("Kal-El_(Prime_Earth)").create_hero_hash
Scraper.new("Diana_of_Themyscira_(Prime_Earth)").create_hero_hash
