require 'integer.rb'
require 'support/to_roman_examples'

RSpec.describe 'when converting to roman numerals using Integer#to_roman_numerals' do
    subject { -> (n) { n.to_roman_numerals } }

    include_examples 'to roman numerals'
end