require 'spec_helper'

RSpec.shared_examples('to roman numerals') do
    it '1 becomes I' do
        expect(subject.call(1)).to eq 'I'
    end

    it '2 becomes II' do
        expect(subject.call(2)).to eq 'II'
    end

    it '4 becomes IV' do
        expect(subject.call(4)).to eq 'IV'
    end

    it '5 becomes V' do
        expect(subject.call(5)).to eq 'V'
    end

    it '6 becomes VI' do
        expect(subject.call(6)).to eq 'VI'
    end

    it '7 becomes VII' do
        expect(7.to_roman_numerals).to eq 'VII'
    end
end