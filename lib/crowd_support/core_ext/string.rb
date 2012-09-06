class String
  # Returns the two digit or four digit numbers in a string that look like they
  # could be years. Optionally provide an array or range (default 1969 to 2068).
  #
  # source: original
  def detect_years(years = (((Time.now.year - 50).to_s)..((Time.now.year + 49).to_s)))
    # TODO: Make year 10,000 compliant.
    years = years.to_a
    short_years = years.collect { |y| y[2..3] }
    r = []
    self.split(/\W+/).each do |substring|
      if years.include? substring
        r << substring
      elsif short_years.include? substring
        r << years[short_years.index substring]
      end
    end
    r
  end
  
  # Returns a filename that doesn't already exist.
  #
  # source: http://www.ruby-forum.com/topic/191831
  def next_filename
    count = 0
    unique_name = dup
    while File.exists?(unique_name)
      count += 1
      unique_name = "#{File.join(File.dirname(dup), File.basename(dup, ".*"))}_#{count}#{File.extname(dup)}"
    end
    unique_name
  end
  
  # Returns a filename with all non-alphanumeric characters removed.
  #
  # source: http://stackoverflow.com/a/10823131
  def sanitize_filename
    # Split the name when finding a period which is preceded by some
    # character, and is followed by some character other than a period,
    # if there is no following period that is followed by something
    # other than a period (yeah, confusing, I know)
    fn = dup.split /(?<=.)\.(?=[^.])(?!.*\.[^.])/m

    # We now have one or two parts (depending on whether we could find
    # a suitable period). For each of these parts, replace any unwanted
    # sequence of characters with an underscore
    fn.map! { |s| s.gsub /[^a-z0-9\- \(\)\[\]\{\}]+/i, '_' }

    # Finally, join the parts with a period and return the result
    return fn.join '.'
  end
end
