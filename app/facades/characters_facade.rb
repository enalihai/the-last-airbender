class CharactersFacade
    def self.get_nation_members(params)
       @characters = CharactersService.characters_by_nation(params)
    end

    def self.parse_affiliates(params)
        characters = get_nation_members(params)
        characters.each do |character|
            Character.new(character)
        end
    end
end