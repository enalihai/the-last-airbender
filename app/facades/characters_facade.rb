class CharactersFacade
    def self.get_nation_members(nation)
       @characters = CharactersService.characters_by_nation(nation)
    end
end