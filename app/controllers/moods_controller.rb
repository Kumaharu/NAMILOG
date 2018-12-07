class MoodsController < ApplicationController

  def create
    @mood = Mood.new(mood_prams)
    @mood.save
    redirect_to boards_show_path(params[:mood]['board_id'])
  end

  def destroy
    @mood = Mood.find(params[:id])
    @mood.delete
    redirect_to board_path
  end

  private

  def  mood_prams
    params[:mood].permit(:board_id, :mood)
  end
end
