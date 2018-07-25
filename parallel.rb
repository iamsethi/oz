require 'cuke_slicer'
require 'open3'


test_dir = Dir.pwd

filters = {included_tags: '@leg_0'}

found_tests = CukeSlicer::Slicer.new.slice(test_dir, filters, :file_line)

threads = []

found_tests.each do |test|
  # fork{"cucumber -p preproduction ZALENIUM=true #{test}"}
  Open3.popen3("cucumber -p example ZALENIUM=true #{test}") do |stdout, stderr, status, thread|
    puts stdout.read
    threads << thread
  end
end

until (threads.all? {|thread| !thread.alive?})
  sleep 1
end