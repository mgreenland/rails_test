class QuizController < ApplicationController
  def index
    respond_to do |format|
      format.html
    end
  end

  def single
    @id = params[:id]
    @artwork = Artwork.find(@id)
    @next_id = params[:id].to_i.next.to_s
    @next_action = "single"
    @prev_id = params[:prev_id]
    @prev_artwork = Artwork.find(@prev_id) if @prev_id

    respond_to do |format|
      format.html
    end
  end

  def rand
    @prev_id = params[:prev_id]
    @prev_artwork = Artwork.find(@prev_id) if @prev_id
    while @id.nil? or @id == @prev_id.to_i do
      @id = Kernel.rand(Artwork.count) + 1
    end
    @artwork = Artwork.find(@id.to_s)
    @next_action = "rand"

    respond_to do |format|
      format.html
    end
  end
end
