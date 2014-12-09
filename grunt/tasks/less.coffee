module.exports = (grunt) ->

  grunt.config.set 'less',
    dev:
      options:
        pretty: true
      files: [
        expand: true
        cwd: './src'
        src: [
          '**/*.less'
          '!styles/libs/ubuntu-*.less'
        ]
        dest: './build'
        ext: '.css'
      ]
