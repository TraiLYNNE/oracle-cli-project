class Scraper
  def scrape_site(url_end)
    hero_page = Nokogiri::HTML(open("http://dc.wikia.com/wiki/#{url_end}"))
    hero_page
  end
end
