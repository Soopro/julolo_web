module.exports = (grunt) ->

  grunt.registerTask 'dev', [
    'build'
    'browserSync:dev'
    'watch:dev'
  ]
