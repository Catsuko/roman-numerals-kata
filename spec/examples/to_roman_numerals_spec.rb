require 'integer.rb'

RSpec.describe 'when converting an integer to roman numerals,' do
    it '1 becomes I' do
        expect(1.to_roman_numerals).to eq 'I'
    end

    it '2 becomes II' do
        expect(2.to_roman_numerals).to eq 'II'
    end
end