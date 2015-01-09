gulp = require 'gulp'
fs = require 'fs'
$ = (require 'gulp-load-plugins')();
runSequence = require 'run-sequence'

config = {
  src: 'styles'
  dest: 'dist'
  # Main file name
  file: 'bootstrap-grid-h'
  # Compatibility with older browser versions
  autoprefixer: 'last 10 versions'
}

gulp.task 'clean', ->
  gulp
  .src [
    config.dest + '/*.css',
  ], {read: false}
  .pipe $.clean()

gulp.task 'compileSass', ->
  gulp.src config.src+'/*.scss'
  .pipe $.rubySass {style: 'expanded', precision: 10}
  .pipe $.autoprefixer config.autoprefixer
  .pipe gulp.dest config.dest
  .pipe $.size()

gulp.task 'minifyCss', ->
  gulp.src(config.dest + '/*.css')
  .pipe($.csso())
  .pipe gulp.dest config.dest + '/min'
  .pipe $.size()

gulp.task 'default', ['clean'], ->
  runSequence 'compileSass', 'minifyCss'
