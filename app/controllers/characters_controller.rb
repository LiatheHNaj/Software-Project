class CharactersController < ApplicationController

  def index
    characters = Character.all
    respond_to do |format|
      format.html { render :index, locals: { characters: characters }}
    end
  end

  def new
    character = Character.new
    respond_to do |format|
      format.html { render :new, locals: { character: character }}
    end
  end

  def view
    character = Character.find(params[:id])
    respond_to do |format|
      format.html { render :view, locals: { character: character }}
    end
  end

  def create
    character = Character.new(params.require(:character).permit(:race, :character_class, :name, :age, :sex, :height, :hair_color))  # new object from params
    stat = Stat.new
    character.stat = stat
    current_user.characters << character
    respond_to do |format|  # respond_to block
      format.html {
        if character.save && stat.save   # if character saves
          redirect_to characters_path   # redirect to index
        else                             #else
          flash.now[:error] = "Error: observation could not be saved"
            render :new, locals: { character: character }  #render now
        end
      }
    end
  end
end
