require_relative '../scraper'

# data for #fetch_movies_url:
# [
#   "https://www.imdb.com/title/tt0111161/",
#   "https://www.imdb.com/title/tt0068646/",
#   "https://www.imdb.com/title/tt0071562/",
#   "https://www.imdb.com/title/tt0468569/",
#   "https://www.imdb.com/title/tt0050083/"
# ]

# data for #scrape_movie:
# {
#   cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
#   director: "Christopher Nolan",
#   summary: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
#   title: "The Dark Knight",
#   year: 2008
# }

describe "#fetch_top_five" do
  it 'returns and array with the urls of the top with movies' do
    expected = [
       "https://www.imdb.com/title/tt0111161/",
       "https://www.imdb.com/title/tt0068646/",
       "https://www.imdb.com/title/tt0468569/",
       "https://www.imdb.com/title/tt0071562/",
       "https://www.imdb.com/title/tt0050083/"
     ]
    actual = fetch_top_five
    expect(actual).to eq expected
  end
end

describe "#scrape_movie" do
  it 'given a url it returns a hash with the movie details' do
    expected = {
     summary: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
     title: "The Dark Knight",
     year: "2008"
   }

   actual = scrape_movie("https://www.imdb.com/title/tt0468569/")
   expect(actual).to eq expected
  end
end
