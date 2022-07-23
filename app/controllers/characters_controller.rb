class CharactersController < ApplicationController
    def index
       @characters = CharactersFacade.parse_affiliates(params)
    end

    private

    def nation_params
        params.permit(:name, :affiliation, :photoUrl, :allies, :enemies)
    end
end