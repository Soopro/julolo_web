module.exports = (grunt) ->

  grunt.config.set 'prettify',
    dev:
      options:
        indent: 2,
        indent_char: ' ',
        wrap_line_length: 120,
        brace_style: 'expand',
        unformatted: ['a', 'sub', 'sup', 'b', 'i', 'u']
      files: [
        expand: true
        cwd: 'build/'
        ext: '.html'
        src: ['**/*.html']
        dest: 'build/'
      ]
