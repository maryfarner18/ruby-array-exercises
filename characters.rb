require_relative './numbers.rb'

class Characters
    
    
    attr_accessor :characters

    def initialize
        @characters = ('a'..'z').to_a
    end

    # 1. return all the letters, capitalized
    def all_caps
        characters.map {|char| char.upcase}
    end

    # 2. first letter with `ord > 120`
    def ord_120
        characters.find {|char| char.ord > 120}
    end

    # 3. all the letters whose capital is > 72
    def capital_72
        caps = all_caps.select {|char| char.ord > 72 }
        caps.map {|char| char.downcase}
    end

    # 4. all letters where the capital has an even ord
    def capital_even
        caps = all_caps.select {|char| char.ord.even?}
        caps.map {|char| char.downcase}
    end

    # 5. all letters with odd ord
    def odd_ord
        characters.select {|char| char.ord.odd?}
    end

    # 6. first odd - ord letter with ascii value > 80
    def first_odd_over_80
        characters.find {|char| char.ord > 80 && char.ord.odd?}
    end

end