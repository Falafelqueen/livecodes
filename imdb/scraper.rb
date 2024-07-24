require 'nokogiri'
require 'open-uri'

USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36"

def fetch_top_five
  url = "https://www.imdb.com/chart/top/"
  # Should go to the url
  html_content = URI.open(url, "User-Agent" => USER_AGENT).read
  doc = Nokogiri::HTML.parse(html_content)

  # Find the top five movies
  base_url = "https://www.imdb.com/"
  doc.search('.ipc-title-link-wrapper')[0..4].map do |element|
    raw_url = element.attributes["href"].value
    # cleaning up the url with regex so our test passes
    url_match_data = raw_url.match(/^\/(?<clean_url>\w+\/\w+\/)/)
    "#{base_url}#{url_match_data[:clean_url]}"
  end
end


def scrape_movie(movie_url)
  # get the HTML page
  html_content = URI.open(movie_url, "User-Agent" => USER_AGENT, "Accept-Language" => "en-US").read
  # parse it
  doc = Nokogiri::HTML.parse(html_content)
  title = doc.search('.hero__primary-text').first.text
  year_data = doc.search('.sc-d8941411-2').first.text.match(/^(?<year>\d{4})/)
  year = year_data[:year]
  summary = doc.search('.sc-2d37a7c7-0.caYjFF').first.text
  # find the element
  {
    summary: summary,
    year: year,
    title: title
  }
end
