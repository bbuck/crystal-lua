

# Lua in Crystal

A port of Lua written in pure Crystal.

## Roadmap

For now, these are the major goals that are on the road map. 

- [ ] Lexer
- [ ] Parser
- [ ] Types
- [ ] Basic Execution

I will expand/update this as parts get written.

## Installation

1. Add the dependency to your `shard.yml`:

```yaml
dependencies:
    crystal-lua:
    github: bbuck/crystal-lua 
```

2. Run `shards install`

## Usage

```crystal
require "lua"
```

## FAQ

### Why?

I like building languages. I have a [scripting language](https://github.com/bbuck/eleetscript) 
I wrote for Ruby (it's not in a usable state right now due to some bugs). This project gives
me an opportunity to write in a language similar to Ruby (Crystal), build a scripting language
(Lua), and learn how a real language is implemented so that I can hopefully apply this knowledge
in the future on other projects.

### Should I use this project?

Nope. At least not right now. The intent is a ground up port (not direct) of the Lua (at the time
of this writing) 5.4.2 implementation. So right now this project doesn't do anything related to
executing Lua code. In the future, hopefully this project will be useful in providing another
Lua VM for Crystal programs.

## Contributing

1. Fork it (<https://github.com/bbuck/crystal-lua/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Brandon Buck](https://github.com/bbuck) - creator and maintainer
