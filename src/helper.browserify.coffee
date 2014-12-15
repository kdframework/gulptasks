browserify = require 'browserify'
coffeeify  = require 'coffeeify'
argv       = require('minimist') process.argv
devMode    = argv.devMode?

module.exports = (options = {}) ->

  options.extensions or= ['.coffee']
  options.debug        = devMode

  b = browserify options
  b.transform coffeeify
  b.bundle()
