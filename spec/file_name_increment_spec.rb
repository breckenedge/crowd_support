require File.dirname(__FILE__) + '/spec_helper'

describe String do
  it 'can autoincrement filenames' do
    require 'fileutils'
    FileUtils.rm_rf('tmp')
    Dir.mkdir('tmp')
    Dir.chdir('tmp')
    FileUtils.touch('foo.tmp')
    FileUtils.touch("foo.tmp".next_filename)
    FileUtils.touch("foo.tmp".next_filename)
    FileUtils.touch("foo.tmp".next_filename)
    FileUtils.touch("foo.tmp".next_filename)
    File.exist?("foo_1.tmp").should be_true
    Dir.chdir('..')
    FileUtils.rm_rf('tmp')
  end
end
