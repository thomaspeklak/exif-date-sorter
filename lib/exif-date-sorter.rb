require 'rubygems'
require "exif-date-sorter/version"
require "exifr"
require "fileutils"

class ExifDateSorter
  def initialize(source, target)
    @source = source
    @target = target
  end

  def move
    Dir[@source + '/**/*.{jpg,JPG}'].each do |image|
      target_dir = dir(image)
      FileUtils.mkdir_p(target_dir) unless File.directory? target_dir
      FileUtils.move image, target_dir
    end
  end

  def date(image)
    EXIFR::JPEG.new(image).date_time_original
  end

  def dir(image)
    date = date(image)
    "#{@target}/#{date.year}/#{'%02d' % date.month}"
  end
end
