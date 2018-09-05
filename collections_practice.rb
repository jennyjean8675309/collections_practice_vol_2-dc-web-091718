require 'pry'

def begins_with_r(array)
  check_for_true = []
  array.each do |x|
    if x.start_with?("r") == true
        check_for_true.push(x)
    end
  end
    if check_for_true.size == array.size
      true
    else
      false
    end
end

def contain_a(array)
  elements_that_contain_a = []
  array.each do |x|
    if x.include?("a") == true
      elements_that_contain_a.push(x)
    end
  end
  elements_that_contain_a
end

def first_wa(array)
  array.find do |x|
    if x.is_a?(String) && x.start_with?("wa")
      x
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.is_a?(String) == false
  end
  array
end

def count_elements(array)
  check_for_element = []
  array.each do |x|
    x[:count] = 0
    first_name = x[:name]
    array.each do |e|
      if e[:name] == first_name
        x[:count] += 1
      end
    end
    check_for_element.push(x)
  end
  check_for_element.uniq
end

def merge_data(keys, data)
  data_to_hash = data.first
  merged_array = []
    keys.each do |x|
      key = x[:first_name]
        keys.each do |y|
          if y[:first_name] == key
          merged_array.push(y.merge(data_to_hash[key]))
          end
        end
    end
    merged_array
end

def find_cool(array)
  check_temperature = []
  array.each do |x|
    if x[:temperature] == "cool"
      check_temperature.push(x)
    end
  end
  check_temperature
end

def organize_schools(list)
  location_pairs = {}
  list.each do |key, value|
    location = value[:location]
    school_name = key 
        if location_pairs[location] == nil
          location_pairs[location] = [school_name]
        else
          location_pairs[location].push(school_name)
        end
      end
    location_pairs
end
