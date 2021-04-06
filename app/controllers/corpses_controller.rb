class CorpsesController < ApplicationController
  def index
    @corpses = Corpse.all
    render 'index.json'
  end

  def show
    @corpse = Corpse.find(params[:id])
    render 'show.json'
  end

  def random
    @corpse = Corpse.random
    @last_entry = @corpse.entries.last
    @last_entry = @corpse.entries.last
    render 'add.json'
  end

  def add
    @corpse = Corpse.find(params[:id])
    @last_entry = @corpse.entries.last
    render 'add.json'
  end

  def create
    @corpse = Corpse.create(corpse_params)
  end

  private

  # set up strong params
  # specify i want some key

  def corpse_params
    params.require(:corpse).permit(:title, entry_attributes: %i[content])
  end
end
