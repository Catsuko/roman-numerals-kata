class RomanNumeral
    def initialize(character, quantity: 1, next_glyph: nil)
        @character = character
        @quantity = quantity
        @next_glyph = next_glyph
    end

    # TODO: Clean up these variable names
    # TODO: Refactor last line so it is easier to read
    def convert(n)
        full_glyphs = @character * occurences_in(n)
        subtraction = subtraction_for(remainder(n))
        remainder = remainder(n) + subtraction
        full_glyphs + convert_using_next(subtraction) + @character * occurences_in(remainder) + convert_using_next(remainder(remainder))
    end
    
    private

    def remainder(n)
        n - occurences_in(n) * @quantity
    end

    def occurences_in(n)
        (n / @quantity).floor
    end

    def convert_using_next(n)
        @next_glyph&.convert(n).to_s
    end

    def subtraction_for(n)
        subtraction = 10.pow(Math.log10([@quantity.pred, 1].max).floor)
        n.positive? && n + subtraction >= @quantity ? subtraction : 0
    end
end