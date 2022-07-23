class CharactersFacade
    def self.get_nation_members(params)
       @characters = CharactersService.characters_by_nation(params)
    end

    def parse_affiliates
        binding.pry
    end
end