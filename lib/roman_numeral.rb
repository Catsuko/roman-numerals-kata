class RomanNumeral
    def initialize(character, quantity: 1, next_glyph: nil)
        @character = character
        @quantity = quantity
        @next_glyph = next_glyph
    end

    def convert(n)
        amount_to_convert = n + subtraction_for(n)
        convert_using_next(subtraction_for(n)) + (@character * occurences_in(amount_to_convert) + convert_using_next(remainder(amount_to_convert)))
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
        n.positive? && n + subtraction == @quantity ? subtraction : 0
    end
end