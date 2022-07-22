class CharactersService
    def self.characters_by_nation(nation)
        response = conn.get('/api/v1/characters') do |faraday|
            faraday.params['affiliation'] = nation
            faraday.params['perPage'] = 100
            faraday.params['page']
        end
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.conn
        Faraday.new(url: "http://last-airbender-api.herokuapp.com")
    end
end