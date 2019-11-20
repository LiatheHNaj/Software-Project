class CharactersController < ApplicationController
  def new
    characters = Character.all
    respond_to do |format|
      format.html { render :new, locals: { characters: characters }}
    end
  end

  def view
    characters = Character.all
    respond_to do |format|
      format.html { render :view, locals: { characters: characters }}
    end
  end
end
