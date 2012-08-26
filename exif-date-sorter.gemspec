# -*- encoding: utf-8 -*-
require File.expand_path('../lib/exif-date-sorter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Thomas Peklak"]
  gem.email         = ["thomas.peklak@gmail.com"]
  gem.description   = %q{Sort photos in year and month folders based on exif date informatiion}
  gem.summary       = %q{Sort photos based on exif information}
  gem.homepage      = ""

  gem.add_dependency(%q<exifr>, ["> 1.1"])
  gem.add_development_dependency(%q<bundler>, ["> 1.0"])



  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "exif-date-sorter"
  gem.require_paths = ["lib"]
  gem.version       = ExifDateSorter::VERSION
end
