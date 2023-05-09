class Linter
  def parse(code_syntax)
    return false if code_syntax === '<'
    return false if code_syntax === '>'
    return false if code_syntax === '><'
    true
  end
end
