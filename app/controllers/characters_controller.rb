class CharactersController < ApplicationController
    def index
       render json: CharactersFacade.get_nation_members(params[:affiliation])
    end
end