module.exports = (grunt) ->

  grunt.registerTask 'build', [
    'clean'
    'copy:libs', 'copy:js', 'copy:img'
    'jade:dev', 'prettify'
    'coffee:dev'
    'less:dev'
    'clean:trash'
  ]
