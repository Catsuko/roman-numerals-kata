require 'integer.rb'

RSpec.describe 'when converting an integer to roman numerals,' do
    it '1 becomes I' do
        expect(1.to_roman_numerals).to eq 'I'
    end

    it '2 becomes II' do
        expect(2.to_roman_numerals).to eq 'II'
    end

    it '4 becomes IV' do
        expect(4.to_roman_numerals).to eq 'IV'
    end

    it '5 becomes V' do
        expect(5.to_roman_numerals).to eq 'V'
    end

    it '6 becomes VI' do
        expect(6.to_roman_numerals).to eq 'VI'
    end

    it '7 becomes VII' do
        expect(7.to_roman_numerals).to eq 'VII'
    end
end