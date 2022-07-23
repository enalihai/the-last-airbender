class CharactersController < ApplicationController
    def index
       @characters = CharactersFacade.get_nation_members(params)
    end

    private

    def nation_params
        params.permit(:name, :affiliation, :photoUrl, :allies, :enemies)
    end
end