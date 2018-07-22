# your code goes here

def begins_with_r(array)

    test_array = array.select do |element|
      element[0] == "r"
    end
test_array.length == array.length

end

def contain_a(array)

  array.select do |element|
    element.include?("a")
  end

end


def first_wa(array)
  
  array.find do |element|
    element[0] == "w" && element[1] == "a"
  end  
end  

def remove_non_strings(array)
  
  array.delete_if do |element|
    element.class != String
  
  end
end

def count_elements(array)
  count_array = [ ] 
  
  array.each do |item|
   item.each do |key, value|
    new_hash = {  }
    new_hash[:name] = value
    new_hash[:count] = array.count(item)
      if count_array.include?(new_hash) != true
        count_array.push(new_hash)
      end
    end
  end  
  count_array  
end 

def merge_data(key_structure, value_structure)
  merged_data = [ ]
  
  key_structure.each do |item|
   # puts item
    value_structure.each do |element|
    #  puts element
      puts item.merge(element)
      
      #item.each do |name, attribute|
       # puts name
        #puts attribute


#end
end  
end  
end  

keys = [
           {
            :first_name => "blake"
        },
           {
            :first_name => "ashley"
        }
    ]
    
data = [
           {
             "blake" => {
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
            "ashley" => {
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
            }
        }
    ]
    
merge_data(keys, data)    