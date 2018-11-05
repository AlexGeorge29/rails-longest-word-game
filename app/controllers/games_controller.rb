class GamesController < ApplicationController
  def new
    @grid = []
    range_nombre = (0..25).to_a
    10.times { @grid << (65 + range_nombre.sample(1)[0]).chr }
    return @grid
  end

  def score
    # raise
    word = params[:word]
    # Test dans le grid
    @grid = params[:grid]
    word_array = word.upcase.split("")
    @decision = true
    word_array.each do |letter|
    if @grid.include?(letter)
      @grid.delete_at(@grid.index(letter))
    else
      @decision = false
    end
  end
end

end
