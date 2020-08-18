require 'support/to_roman_examples'
require 'roman_numeral'

RSpec.describe 'when converting numbers using roman numerals' do
    let(:roman_numerals) do
        RomanNumeral.new('M', quantity: 1000, next_glyph:
            RomanNumeral.new('D', quantity: 500, next_glyph: 
                RomanNumeral.new('C', quantity: 100, next_glyph: 
                    RomanNumeral.new('L', quantity: 50, next_glyph:
                        RomanNumeral.new('X', quantity: 10, next_glyph: 
                            RomanNumeral.new('V', quantity: 5, next_glyph: 
                                RomanNumeral.new('I')))))))
    end
    subject { -> (n) { roman_numerals.convert(n) } }

    include_examples 'to roman numerals'
end