module.exports = (grunt) ->

  grunt.registerTask 'build', [
    'clean'
    'copy:libs', 'copy:js'
    'jade:dev', 'prettify'
    'coffee:dev'
    'clean:trash'
  ]
