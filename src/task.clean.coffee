gulp    = require 'gulp'
Promise = require 'bluebird'
del     = Promise.promisify require 'del'

module.exports = (buildPath) -> del [buildPath], force: yes
