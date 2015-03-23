family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

newarr = []
family.select{|k, v| k == :sisters or k == :brothers}.each_value do |names|
	newarr += names
end

p newarr
