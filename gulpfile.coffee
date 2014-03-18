gulp = require 'gulp'
plugins = require('gulp-load-plugins')(camelize:true)

src =
  style: 'theme/styles/style.less'
  scripts: 'theme/scripts/*.coffee'
  less: 'theme/styles/*.less'
  app: 'app/*.coffee'
  appFile: 'app.coffee'
  static: 'static/*/*'
  css: 'static/css/'
  js: 'static/js/'

# DEVELOPMENT
gulp.task 'devClean', () ->
  return gulp.src(src.static, read: false)
    .pipe plugins.clean()

gulp.task 'devStyles', () ->
  return gulp.src(src.style)
    .pipe plugins.less()
    .on('error', plugins.util.log)
    .pipe gulp.dest(src.css)

gulp.task 'devScripts', () ->
  return gulp.src(src.scripts)
    .pipe plugins.coffee()
    .on('error', plugins.util.log)
    .pipe gulp.dest(src.js)

# Watch
gulp.task 'watch', () ->
  gulp.watch src.less, ['devStyles']
  gulp.watch src.scripts, ['devScripts']

# Default
gulp.task 'default', ['devClean'], () ->
  gulp.start 'devStyles'