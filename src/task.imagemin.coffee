gulp     = require 'gulp'
imagemin = require 'gulp-imagemin'
pngquant = require 'imagemin-pngquant'

module.exports = (buildPath, imagePath) ->

  gulp.src imagePath
    .pipe imagemin
      progressive : on
      svgoPlugins : [ removeViewBox : off ]
      use         : [ pngquant() ]
    .pipe gulp.dest buildPath
