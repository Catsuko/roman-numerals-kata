require 'support/to_roman_examples'
require 'glyphs/unit_glyph'
require 'glyphs/bunch_glyph'

RSpec.describe 'when converting to roman numerals using glyphs' do
    let(:root_glyph) do
        Glyphs::BunchGlyph.new('L', quantity: 50, next_glyph:
            Glyphs::BunchGlyph.new('X', quantity: 10, next_glyph: 
                Glyphs::BunchGlyph.new('V', quantity: 5, next_glyph: 
                    Glyphs::UnitGlyph.new('I'))))
    end
    subject { -> (n) { root_glyph.convert(n) } }

    include_examples 'to roman numerals'
end