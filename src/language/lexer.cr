require "./token"

module Lua
  class Lexer
    RESERVED_WORDS = %w[and break do else elseif end false for function goto if
                        in local nil not or repeat return then true until while]
    RESERVED_WORDS_SET = RESERVED_WORDS.to_set
    OPERATORS = %w[+ - * / // ^ % & ~ | # ~ .. ... == >= <= ~= << >> ::]
    OPERATORS_SET = OPERATORS.to_set

    @source : String

    def initialize(@source)
      @tokens = [] of Token
      @tokenized = false

      # tokenizer attributes
      @start = 0
      @length = 1
    end

    def tokenize
      return @tokens if @tokenized

      @tokenized = true
      process_string

      @tokens
    end

    private def process_string
      while !eof?
        emit(Token.new(:char, lexeme))
      end
      emit(EOFToken.new)
    end

    private def lexeme
      @source[@start, @length]
    end

    private def peek
      @source[@start + @length + 1]
    end

    private def advance
      return false if (@start + @length + 1) > @source.size
      @length += 1
      true
    end

    private def eof?
      return true if @start >= @source.size
      false
    end

    private def emit(token : Token)
      @tokens << token
      @start = @start + @length
      @length = 1
    end
  end
end
