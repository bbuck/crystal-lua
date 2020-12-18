# Lua in Crystal

A port of Lua written in pure Crystal.

## Roadmap

For now, these are the major goals that need to be accomplished.

- [ ] Lexer
- [ ] Parser
- [ ] Types
- [ ] Basic Execution

I will expand/update this as parts are written.

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
