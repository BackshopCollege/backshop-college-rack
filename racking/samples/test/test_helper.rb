require 'test/unit'
require 'rack/test'
require 'bundler/setup'

Bundler.require :default, :test

require_relative '../sample_1'
require_relative '../sample_2'