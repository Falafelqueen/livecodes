require 'benchmark'

array = Array.new(100000) { |i| i.to_s }

Benchmark.bm(7) do |x|
  x.report("push:")   { array.push(2)}
  x.report("unshift") { array.unshift(2) }
  x.report("specific:")  { array[100] = 2 }
end
