module Lua
  class Token
    @kind : Symbol
    @value : (String | Nil)

    getter :kind, :value

    def initialize(@kind, @value); end

    def ==(o : Token)
      self.class == o.class && kind == o.kind && value == o.value
    end
  end

  class EOFToken < Token
    def initialize
      super(:eof, nil)
    end
  end
end
