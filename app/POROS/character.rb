class Character
    attr_reader :name, :photo, :allies, :enemies, :affiliation
    
    def initialize(data)
        @name = data[:name]
        @photo = data[:photoUrl]
        @allies = data[:allies]
        @affiliations = data[:affiliation]
    end

    def enemies
        binding.pry
        data.each do |enemy|
            enemy
        end
    end
end 