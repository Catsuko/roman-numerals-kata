module Glyphs
    class BunchGlyph
        def initialize(character, quantity:, next_glyph:)
            @character = character
            @quantity = quantity
            @next_glyph = next_glyph
        end

        def convert(n)
            return nil.to_s unless n.positive?

            amount = (n / @quantity).floor
            @character * amount + @next_glyph.convert(n - amount * @quantity)
        end    
    end
end