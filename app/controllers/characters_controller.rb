class CharactersController < ApplicationController
    def index
        @characters = CharactersFacade.get_nation_members(params[:nation])
    end
end