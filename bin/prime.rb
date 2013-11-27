#!/usr/bin/env ruby

require 'optparse'
require 'methadone'
require_relative '../motion-prime/version'

class App
  include Methadone::Main
  include Methadone::CLILogging
  include Methadone::SH
  
  main do |command, opt|
    case command.to_sym
    when :new then create(opt)
    else help
    end
    0
  end

  def self.help
    info "Command line tools for MotionPrime"
    info "Commands:"
    info "  new <appname>"
    info "    Creates a new MotionPrime app from a template."
  end

  def self.create(name)
    return puts "Usage: prime new <appname>" unless name.to_s.length > 0
    info "Creating new MotionPrime iOS app: #{name}"
    sh "motion create --template=git@github.com:droidlabs/motion-prime.git #{name}"
    sh "cd ./#{name}"
    info "Command: bundle instal"
    sh "bundle install"
    info "Command: pod setup"
    sh "pod setup"
    sh "cd .."
  end

  description "Command line tools for MotionPrime"

  arg :command
  arg :opt, :optional

  version MotionPrime::VERSION

  go!
end