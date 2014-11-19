module.exports = (grunt) ->

  grunt.config.set 'browserSync',
    dev:
      bsFiles:
        src: './src/*'
      options:
        server:
          baseDir: './build'
        port: 9000
        index: 'index.html'
        startPath: '/'
        watchTask: true
