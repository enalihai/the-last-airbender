class CharactersService
    def self.find_characters_by_nation(nation)
        response = conn.get('/api/v1/characters') do |faraday|
            faraday.params['affiliation'] = nation
        end
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.conn
        Faraday.new(url: "http://last-airbender-api.herokuapp.com") do |f|
            f.adapter Faraday.default_adapter
        end
    end
end