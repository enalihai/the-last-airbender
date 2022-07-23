class Character
    attr_reader :name, :photo, :allies, :enemies, :affiliation
    
    def initialize(data)
        @name = data[:name]
        @photo = data[:photoUrl]
        @allies = data[:allies]
        @affiliations = data[:affiliation]
        @enemies = data[:enemies]
    end

    # def parse_enemies(data)
    #     data.select do |enemy|
    #         enemy
    #     end
    # end
end 