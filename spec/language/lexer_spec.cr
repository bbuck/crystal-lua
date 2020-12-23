require "../spec_helper"

describe Lua::Lexer do
  describe "#tokenize" do
    it "returns an EOF token only for an empty string" do
      Lua::Lexer.new("").tokenize.should eq([Lua::EOFToken.new])
    end
  end
end
