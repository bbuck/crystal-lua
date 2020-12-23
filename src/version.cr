require "semantic_version"

module Lua
  VERSION = SemanticVersion.new(0, 1, 0, "alpha")

  LANGUAGE_VERSION = SemanticVersion.new(5, 4, 2)
  LANGUAGE_VERSION_NUM = 504
  LANGUAGE_VERSION_RELEASE_NUM = (LANGUAGE_VERSION_NUM * 100) + 0

  LANGUAGE_VERSION_STRING = "Lua #{LANGUAGE_VERSION.major}.#{LANGUAGE_VERSION.minor}"
  LANGUAGE_RELEASE_STRING = "Lua #{LANGUAGE_VERSION}"
  LANGUAGE_COPYRIGHT = "#{LANGUAGE_RELEASE_STRING} Copyright (C) 1994-2020 Lua.org, PUC-Rio"
  LANGUAGE_AUTHORS = "R. Ierusalimschy, L. H. de Figueiredo, W. Celes"
end
