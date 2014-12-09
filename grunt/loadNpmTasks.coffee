module.exports = (grunt) ->
  npmTasks = [
    'grunt-contrib-clean'
    'grunt-contrib-copy'
    'grunt-contrib-coffee'
    'grunt-contrib-jade'
    'grunt-contrib-less'
    'grunt-prettify'
    'grunt-contrib-watch'
    'grunt-browser-sync'
  ]

  for npmTask in npmTasks
    grunt.loadNpmTasks npmTask
