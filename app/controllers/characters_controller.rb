class CharactersController < ApplicationController
  def new
    characters = Character.all
    respond_to do |format|
      format.html { render :new, locals: { characters: characters }}
      end
    end
  end
