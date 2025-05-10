require 'spec_helper'
require_relative '../code/cipher'

RSpec.describe 'caesar_cipher' do
  it 'shifts lowercase letters' do
    expect(caesar_cipher("abc", 1)).to eq("bcd")
    expect(caesar_cipher("xyz", 3)).to eq("abc")
  end

  it 'shifts uppercase letters' do
    expect(caesar_cipher("ABC", 1)).to eq("BCD")
    expect(caesar_cipher("XYZ", 2)).to eq("ZAB")
  end

  it 'leaves non-letters unchanged' do
    expect(caesar_cipher("A!a", 1)).to eq("B!b")
    expect(caesar_cipher("Hello, World!", 0)).to eq("Hello, World!")
  end

  it 'wraps around correctly' do
    expect(caesar_cipher("z", 1)).to eq("a")
    expect(caesar_cipher("Z", 1)).to eq("A")
    expect(caesar_cipher("z", 2)).to eq("b")
    expect(caesar_cipher("Z", 2)).to eq("B")
  end

  it 'handles large shift values' do
    expect(caesar_cipher("abc", 26)).to eq("abc")
    expect(caesar_cipher("abc", 52)).to eq("abc")
    expect(caesar_cipher("abc", 29)).to eq("def")
  end
end
