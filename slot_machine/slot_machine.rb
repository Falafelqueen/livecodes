class SlotMachine
  SYMBOLS = {
    joker: 50,
    star: 40,
    bell: 30,
    seven: 20,
    cherry: 10
  }.freeze

  attr_reader :reels

  def initialize(reels = [])
    @reels = reels
  end

  def play
    # we clean up the reels array before we fill it with random elements
    @reels = []
    3.times do
      # add random elements to the reels array
      # we convert them to string because of how our socre code is written
      # other would be to define the hash with strings already
      # or pass the reels as symbols in the test
      @reels << SYMBOLS.keys.sample.to_s
    end
  end

  # long score method
  # def score
  #   if @reels.all? { |e| e == @reels[0] }
  #     SYMBOLS[@reels[0].to_sym]
  #   elsif @reels.uniq.size == 2 && @reels.one?("joker")
  #     not_joker = @reels.find { |e| e != "joker" }
  #     SYMBOLS[not_joker.to_sym] / 2
  #   elsif @reels.uniq.size == 2 && @reels.any?("joker")
  #     joker = @reels.find { |e| e == "joker" }
  #     SYMBOLS[joker.to_sym] / 2
  #   else
  #     0
  #   end
  # end

  # refactored
  def score
    if tree_the_same?
      SYMBOLS[main_symbol]
    elsif two_the_same?
      # we can just divide the score by 2 bcs of how the rules were defined
      SYMBOLS[main_symbol] / 2
    else
      0
    end
  end


  private

  def tree_the_same?
    # checking if all elements in the array are the same as the first one
    @reels.all? { |e| e == @reels[0] }
    # another way would be checking the lenght of an array made out of unique elements
    # @reels.uniq.length == 1
  end

  def two_the_same?
    # checking if there are 2 elements in the reels array after removing duplicates (uniq)
    # checking if there is a joker in the array
    @reels.uniq.size == 2 && @reels.include?("joker")
  end

  def main_symbol
    # we check if there is one joker in the array
    if @reels.one?("joker")
      # if there is it means that there 2 other elements that are the same
      # we find the one that is not joker
      not_joker = @reels.find { |e| e != "joker" }
      not_joker.to_sym
    elsif @reels.none?("joker")
      # if there is no joker we return the first element of the array
      # it means that the method is being called from the scenario where 3 are the same
      @reels[0].to_sym
    else
      # if there is more than one joker we can directly return the joker as a symbol
      :joker
    end
  end
end
