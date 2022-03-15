class GamesController < ApplicationController


  def new
  end

  def create
    game = Game.create!(status: 'in_progress')
    redirect_to new_game_progresses_path(game)
  end

  def challenge
    current_game = Game.find(params[:id])
    extract_comics = ExtractionAlgorithm.new(current_game).compute
    @comic = extract_comics.first
  end

  def give_up

  end

  def update
    current_game = Game.find(params[:id])

    if params[:correct].present?
      current_game.status = 'finished'
      current_game.result = :correct
      current_game.save!

      redirect_to correct_game_path(current_game)
    else
      current_game.status = 'finished'
      current_game.result = :incorrect
      current_game.save!

      redirect_to give_up_game_path(current_game)
    end
  end

  def correct

  end


end
