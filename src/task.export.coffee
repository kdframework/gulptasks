gulp    = require 'gulp'
shell   = require 'gulp-shell'
argv    = require('minimist') process.argv
{ log } = require './helper.logger'

module.exports = (buildPath) ->

  exportDir = argv.exportDir

  unless exportDir

    log 'yellow', "nothing exported."
    return

  cmds = [
    "rsync -av #{buildPath}/ #{exportDir}"
    "\necho 'Export finished!'"
  ]

  gulp.src ''
    .pipe shell cmds
