# TODO: Define your View class here, to display elements to the user and ask them for their input
class View
  def display_list(list)
    if list.empty?
      puts "The cookbook is empty"
    else
      list.each_with_index do |item, index|
        puts "#{index + 1} - #{item.name} #{item.description}"
      end
    end
  end

  def ask_for(stuff)
    puts "What is the #{stuff}?"
    gets.chomp
  end

  def ask_for_index
    puts "What is the number?"
    gets.chomp.to_i - 1
  end
end
