
def vexpress(*args)
  array_name, v1, o1, s1, s2, o2, v2 = args
  
  File.open("#{array_name}.cr", "w") { |f|
    f.puts <<-EXPRESSION
    require "./src/Lhacurimosa"

    #{array_name} = ["#{v1}", "#{o1}", "#{s1}", "#{s2}", "#{o2}", "#{v2}"]
    EXPRESSION
    
    f.puts "
new_index = ARGV[0].to_i
encrireln(#{array_name}[new_index])"
  }
end
