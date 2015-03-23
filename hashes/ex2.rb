h1 = {"a"=> 1, "b"=> 2}
h2 = {"b"=> 3, "d"=> 4}

h3 = h1.merge(h2)
p "merge"
p "h1="+ h1.to_s
p "h2="+ h2.to_s
p "h3="+ h3.to_s

h3 = h1.merge!(h2)
p "merge!"
p "h1="+ h1.to_s
p "h2="+ h2.to_s
p "h3="+ h3.to_s
