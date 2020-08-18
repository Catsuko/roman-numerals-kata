class RomanNumeral
    def initialize(character, quantity: 1, next_glyph: nil)
        @character = character
        @quantity = quantity
        @next_glyph = next_glyph
    end

    def convert(n)
        amount = (n / @quantity).floor
        @character * amount + convert_using_next(n - amount * @quantity).to_s
    end

    private

    def convert_using_next(n)
        n.positive? ? @next_glyph&.convert(n) : nil
    end
end
