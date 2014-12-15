gulp       = require 'gulp'
stylus     = require 'gulp-stylus'
concat     = require 'gulp-concat'
rename     = require 'gulp-rename'
gulpif     = require 'gulp-if'
livereload = require 'gulp-livereload'
argv       = require('minimist') process.argv
devMode    = argv.devMode?

module.exports = (buildPath, stylesPath) ->

  gulp.src stylesPath
    .pipe stylus
      compress  : yes
      sourcemap : inline  : yes  if devMode
    .pipe concat 'main.css'
    .pipe rename 'main.css'
    .pipe gulpif devMode, livereload()
    .pipe gulp.dest "#{buildPath}/css"
