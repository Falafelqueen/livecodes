require_relative 'scraper'
require 'yaml'

puts "Getting info about the movies"

# get the five top urls - get the array of the urls
five_url = fetch_top_five

# get the movie details

# get the details of all of the 5 top movies

details = five_url.map do |url|
  scrape_movie(url)
end

puts "Writing into yaml"

File.open('movie.yaml', 'w') do |file|
  file.write(details.to_yaml)
end
