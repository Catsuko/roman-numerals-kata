module Glyphs
    class UnitGlyph
        def initialize(character)
            @character = character
        end

        def convert(n)
            @character * n
        end
    end
end