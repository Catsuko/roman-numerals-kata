require 'spec_helper'

RSpec.shared_examples('to roman numerals') do
    {
        'I':        1,
        'II':       2,
        'IV':       4,
        'V':        5,
        'VI':       6,
        'VII':      7,
        'VIII':     8,
        'IX':       9,
        'X':        10,
        'XII':      12,
        'XV':       15,
        'XVIII':    18,
        'XIX':      19,
        'XX':       20,
        'XXIV':     24,
        'XXXIX':    39,
        'XL':       40,
        'XLII':     42,
        'XLIX':     49,
        'L':        50,
        'LXXVIII':  78,
        'LXXX':     80,
        'LXXXVII':  87,
        'XC':       90,
        'XCIX':     99,
        'C':        100,
        'CXXIX':    129,
        'CCXCIV':   294,
        'CCC':      300,
        'CD':       400,
        'CDLVIII':  458,
        'D':        500,
        'CM':       900,
        'CMLIX':    959,
        'M':        1000,
        'MD':       1500,
        'MMCDXCIV': 2494,
    }.each do |rn, n|
        it "#{n} becomes #{rn}" do
            expect(subject.call(n)).to eq rn.to_s
        end
    end
end