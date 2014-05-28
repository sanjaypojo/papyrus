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
  images: 'static/images/'
  finalImages: 'static/images/*'
  layouts: 'theme/layouts/*.jade'
  content:
    posts: 'content/*'
    images: 'content/images/*'

distro =
  app: 'distro/app/'
  root: 'distro/'
  static: 'distro/static/*/*'
  css: 'distro/static/css/'
  js: 'distro/static/js/'
  images: 'distro/static/images/'
  content: 'distro/content/'
  layouts: 'distro/theme/layouts/'

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

gulp.task 'devImages', () ->
  return gulp.src(src.content.images)
    .pipe plugins.imagemin()
    .pipe gulp.dest(src.images)

# Watch
gulp.task 'watch', () ->
  gulp.watch src.less, ['devStyles']
  gulp.watch src.scripts, ['devScripts']
  gulp.watch src.content.images, ['devImages']

# Default
gulp.task 'default', ['devClean'], () ->
  gulp.start 'devStyles'

# PRODUCTION
gulp.task 'distroClean', () ->
  return gulp.src(distro.root, read: false)
    .pipe plugins.clean()

gulp.task 'distroStyles', () ->
  return gulp.src(src.style)
    .pipe plugins.less()
    .on('error', plugins.util.log)
    .pipe gulp.dest(distro.css)

gulp.task 'distroScripts', () ->
  return gulp.src(src.scripts)
    .pipe plugins.coffee()
    .on('error', plugins.util.log)
    .pipe gulp.dest(distro.js)

gulp.task 'distroImages', () ->
  return gulp.src(src.finalImages)
    .pipe gulp.dest(distro.images)

gulp.task 'distroContent', () ->
  return gulp.src(src.content.posts)
    .pipe gulp.dest(distro.content)

gulp.task 'distroApp', () ->
  return gulp.src(src.app)
    .pipe gulp.dest(distro.app)

gulp.task 'distroAppFile', () ->
  return gulp.src(src.appFile)
    .pipe gulp.dest(distro.root)

gulp.task 'distroLayouts', () ->
  return gulp.src(src.layouts)
    .pipe gulp.dest(distro.layouts)

gulp.task 'distroGitAdd', () ->
  return gulp.src('./distro/**')
    .pipe plugins.git.add()

gulp.task 'distroGitCommit', ['distroGitAdd'], () ->
  return gulp.src('./distro/**')
    .pipe plugins.git.commit('Updated distribution')


distroArray = ['distroAppFile', 'distroApp', 'distroContent', 'distroStyles', 'distroImages', 'distroScripts', 'distroLayouts']

# Create Distro
gulp.task 'distro', distroArray, () -> return