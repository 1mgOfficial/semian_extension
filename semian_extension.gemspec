$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require 'semian/version'
require 'semian/platform'

Gem::Specification.new do |s|
  s.name = 'semian_extension'
  s.version = Semian::VERSION
  s.summary = 'Bulkheading for Ruby with SysV semaphores'
  s.description = <<-DOC
    A Ruby C extention that is used to control access to shared resources
    across process boundaries with SysV semaphores.
  DOC
  s.homepage = 'https://github.com/1mgOfficial/semian'
  s.authors = ['Scott Francis', 'Simon Eskildsen', 'Dale Hamel', 'Sajan Gupta']
  s.email = 'root@1mg.com'
  s.license = 'MIT'

  s.metadata['allowed_push_host'] = 'https://rubygems.org'

  s.files = Dir['{lib,ext}/**/**/*.{rb,h,c}']
  s.extensions = ['ext/semian/extconf.rb']
  s.add_development_dependency 'rake-compiler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'timecop'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'redis'
  s.add_development_dependency 'webrick'
  s.add_development_dependency 'toxiproxy', '~> 1.0.0'
  s.add_development_dependency 'grpc'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'memory_profiler'
  s.add_development_dependency 'benchmark-memory'
end
