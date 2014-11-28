libs = require '../libs'
path = require 'path'
{basename} = path
{extname} = path

module.exports = (grunt) ->

  grunt.config.set 'copy',
    libs:
      expand: true
      src: libs
      dest: './build/'
      rename: (dest, src) ->
        dest = assetFilter dest, src
        dest
    js:
      expand: true
      cwd: './src'
      src: '**/*.js'
      dest: './build/'
    img:
      expand: true
      cwd: './src'
      src: '**/*.png'
      dest: './build/'

assetFilter = (dest, src) ->
  filename = basename src
  _extname = extname filename
  if _extname is '.css'
    dest = dest + '/styles/libs/' + filename
  else if _extname is '.js'
    dest = dest + '/scripts/libs/' + filename
  else if _extname in ['.eot', '.svg', '.ttf', '.woff']
    dest = dest + '/styles/fonts/' + filename
  else
    dest = './trash/' + filename
  dest
