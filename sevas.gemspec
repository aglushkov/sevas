require './lib/sevas/version'

Gem::Specification.new do |s|
  s.name        = 'sevas'
  s.version     = N1Finder::VERSION
  s.summary     = ''
  s.description = <<~DESC
    Modular serializer, that allows to serialize only selected fields,
    preload only selected relations, and many more
  DESC

  s.authors     = ['Andrey Glushkov']
  s.email       = 'aglushkov@shakuro.com'
  s.files       = `git ls-files lib spec Readme.md`.split("\n")
  s.homepage    = 'https://github.com/aglushkov/sevas'
  s.license     = 'MIT'
end