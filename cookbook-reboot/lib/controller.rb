#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_list
  end

  def add
    # Retrieve the user input (name)
    name = @view.ask_for("name")
    # Retrieve the user input (description)
    description = @view.ask_for("description")
    # Create a new recipe from user input
    new_recipe = Recipe.new(name, description)
    # Add it to the cookbook
    @cookbook.create(new_recipe)
  end

  def remove
    # Show the list of all the recipes
    display_list
    # Ask which one they want to remove (index)
    index = @view.ask_for_index
    # Remove it from the cookbook
    @cookbook.destroy(index)
  end


  private

  def display_list
    # Get all the recipes from the db
    recipes = @cookbook.all
    # Display all the recipes (view)
    @view.display_list(recipes)
  end
end
