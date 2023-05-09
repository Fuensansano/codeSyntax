require_relative '../src/linter'

describe Linter do
  it 'given <> then return true' do
    linter = Linter.new

    expect(linter.parse('<>')).to be(true)
  end

  it 'given <><> then return true' do
    linter = Linter.new

    expect(linter.parse('<><>')).to be(true)
  end

  it 'given <><><> then return true' do
    linter = Linter.new

    expect(linter.parse('<><><>')).to be(true)
  end

  ['><', '>','<'].each do |code_syntax|
    it "given #{code_syntax} then return false" do
      linter = Linter.new

      expect(linter.parse(code_syntax)).to be(false)
    end
  end
end
