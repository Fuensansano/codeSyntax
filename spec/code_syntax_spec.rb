require_relative '../src/linter'

describe Linter do
  ['<>', '<><>','<><><>'].each do |right_code_syntax|
    it "given #{right_code_syntax} then return true" do
      linter = Linter.new

      expect(linter.parse(right_code_syntax)).to be(true)
    end
  end

  ['><', '>','<'].each do |wrong_code_syntax|
    it "given #{wrong_code_syntax} then return false" do
      linter = Linter.new

      expect(linter.parse(wrong_code_syntax)).to be(false)
    end
  end
end
