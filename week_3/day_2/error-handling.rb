begin
  puts 1/0
rescue ZeroDivisionError => e
  puts "Caught: #{e.message}"
ensure
  puts "Always runs"
end


class MyError < StandardError; end
def check(x)
  raise MyError, "bad #{x}" if x < 0
  "ok"
end
puts check(10)
puts check(-1) rescue puts "rescued custom"
