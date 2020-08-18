# TODO: Replace nil argument with Null Object
# TODO: Find a better way to handle the substitution case
class RomanNumeral
    def initialize(character, quantity: 1, next_glyph: nil)
        @character = character
        @quantity = quantity
        @next_glyph = next_glyph
    end

    def convert(n)
        if can_handle?(n)
            @character * occurences_in(n) + convert_using_next(remainder(n))
        else
           @next_glyph&.convert(1).to_s + convert(n.succ)
        end
    end

    def can_handle?(n)
        occurences_in(n) < 4 && (@next_glyph.nil? || @next_glyph.can_handle?(remainder(n)))
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
end
