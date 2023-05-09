require_relative '../src/linter'

describe Linter do
  it 'given <> then return true' do
    linter = Linter.new

    expect(linter.parse('<>')).to be(true)
  end

  it 'given < then return false' do
    linter = Linter.new

    expect(linter.parse('<')).to be(false)
  end

  it 'given > then return false' do
    linter = Linter.new

    expect(linter.parse('>')).to be(false)
  end
end
