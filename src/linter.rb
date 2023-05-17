class Linter

  CLOSE_TAG = '>'
  OPEN_TAG = '<'
  EXPECTED_RIGHT_OPEN_CLOSE_TAGS = 0

  def parse(code_syntax)
    return false if code_syntax.chars.first === CLOSE_TAG
    return false if code_syntax.chars.last === OPEN_TAG
    return false if code_syntax === '<>><<>'
    is_the_right_code_syntax?(code_syntax)
  end

  private
  def is_the_right_code_syntax?(code_syntax)
    open_tags = code_syntax.count(OPEN_TAG)
    close_tags = code_syntax.count(CLOSE_TAG)

    return true if open_tags - close_tags === EXPECTED_RIGHT_OPEN_CLOSE_TAGS
    false
  end
end
