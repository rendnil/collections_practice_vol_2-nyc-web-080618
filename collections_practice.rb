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
    value_structure.each do |element|
      element.each do |name, attribute|
        new_hash = { }
      
        if name == item.values.join()
         new_hash = item.merge(attribute)
         merged_data.push(new_hash)
end
end
end  
end
merged_data
end  

def find_cool(structure)
  
  cool_array = [ ]
  structure.each do |element|
    
    element.each do |key, value|
      if value == "cool"
        cool_array.push(element)
     end
   end
  end
  cool_array
end  

def organize_schools(schools)
  
  school_locations =  {    }
  schools.each do |element, attribute|
    
    if attribute.keys.join() == "location"
      
      school_locations[attribute.values.join()] = [ ]
      end
  end    

  schools.each do |element, attribute|

    school_locations[attribute.values.join()].push(element)
    
    end 
  school_locations
end  
  
