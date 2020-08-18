# Files can be imported straight from /lib
require 'example'
require 'support/to_roman_examples'

# Try running `rspec --fail-fast` if doing TDD
RSpec.describe 'when converting to roman numerals' do
    # TODO: Make lambda call your roman numerals implementation.
    subject { -> (n) { example(n) } }

    include_examples 'to roman numerals'
end