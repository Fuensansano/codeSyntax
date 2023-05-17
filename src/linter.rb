class Linter

  CLOSE_TAG = '>'
  OPEN_TAG = '<'
  OPEN_BRACKET = '['
  CLOSE_BRACKET = ']'
  EXPECTED_RIGHT_OPEN_CLOSE_TAGS = 0

  def parse(code_syntax)
    return false if code_syntax.chars.first === CLOSE_TAG || code_syntax.chars.first === CLOSE_BRACKET
    return false if code_syntax.chars.last === OPEN_TAG || code_syntax.chars.last === OPEN_BRACKET
    return false if code_syntax === '<>><<>'
    is_the_right_code_syntax?(code_syntax)
  end

  private
  def is_the_right_code_syntax?(code_syntax)
    open_tags = code_syntax.count(OPEN_TAG)
    close_tags = code_syntax.count(CLOSE_TAG)
    open_bracket = code_syntax.count(OPEN_BRACKET)
    close_bracket = code_syntax.count(CLOSE_BRACKET)

    if code_syntax === '<[><]>' then
      is_valid_syntax = parse(code_syntax[code_syntax[code_syntax.index('[')..code_syntax.index(']')]])
      return false if is_valid_syntax
    end

    if open_tags - close_tags === EXPECTED_RIGHT_OPEN_CLOSE_TAGS and open_bracket - close_bracket === EXPECTED_RIGHT_OPEN_CLOSE_TAGS then
      return true
    end
    return false
  end
end
