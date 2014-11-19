module.exports = (grunt) ->

  grunt.config.set 'watch',
    dev:
      files: [
        './src/**/*'
      ]
      tasks: ['build']
