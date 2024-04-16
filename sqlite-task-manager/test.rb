require "sqlite3"
require_relative "task"

DB = SQLite3::Database.new("tasks.db")

DB.results_as_hash = true

# READ

# task = Task.find(1)
# puts "#{task.title} #{task.description}"
