module.exports = (grunt) ->

  grunt.config.set 'coffee',
    dev:
      expand: true
      cwd: './src'
      src: ['**/*.coffee']
      dest: './build'
      ext: '.js'
