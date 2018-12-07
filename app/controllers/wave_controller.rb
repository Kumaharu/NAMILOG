class WaveController < ApplicationController

  def create
    @wave = Wave.new(wave_prams)
    @wave.save
    redirect_to boards_show_path(params[:wave]['board_id'])
  end

  def destroy
    @wave = Wave.find(params[:id])
    @wave.delete
    redirect_to board_path
  end

  private

  def  wave_prams
    params[:wave].permit(:board_id, :status, :comment, :windway, :shore, :windpower, :swell, :swellway, :bottom)
  end

end
