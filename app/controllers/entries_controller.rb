class EntriesController < ApplicationController
  def create
    @entry = Entry.create(entry_params)
    @corpse = @entry.corpse
    render 'corpses/show.json'
  end

  private

  def entry_params
    params.require(:entry).permit(:corpse_id, :content)
  end
end
