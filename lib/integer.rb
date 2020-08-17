class Integer
    def to_roman_numerals
        self > 4 ? 'V' + (self - 5).to_roman_numerals : 'I' * self
    end
end