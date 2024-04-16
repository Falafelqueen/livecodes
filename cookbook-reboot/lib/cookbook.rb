# TODO: Implement the Cookbook class that will be our repository
require 'csv'

class Cookbook
  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    load
  end

  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
    save_to_csv
  end

  def find(index)
    @recipes[index]
  end

  def destroy(index)
    @recipes.delete_at(index)
    save_to_csv
  end


  private

  def load
    CSV.foreach(@csv_file, headers: true, header_converters: :symbol) do |row|
      # row[0] row[1]
      @recipes << Recipe.new(row[:name], row[:description])
    end
  end


  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      csv << ["name", "description"]
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
