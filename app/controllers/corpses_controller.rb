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
    render 'show.json'
  end

  def add
    @corpse = Corpse.find(params[:id])
    @last_entry = @corpse.entries.last
    render 'add.json'
  end

  def new; end
end
