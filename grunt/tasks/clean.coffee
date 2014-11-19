module.exports = (grunt) ->

  grunt.config.set 'clean',
    build: './build/'
    dist: './dist/'
    trash: [
      '.tmp'
      'trash'
    ]
