module.exports = (grunt) ->

  grunt.config.set 'jade',
    dev:
      options:
        pretty: true
      files: [
        expand: true
        cwd: './src'
        src: [
          '**/*.jade'
          '!base.jade'
          '!common/**/*.jade'
        ]
        dest: './build'
        ext: '.html'
      ]
