# OWN SORTING METHOD

some_array = ["Gato", "Perro", "Elefante", "Zancudo", "Perro", "Raton"]

def sort(some_array)
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  smallest_word = "z"*1000
  if unsorted_array.length > 0
    unsorted_array.each do |word|
      smallest_word = word if word < smallest_word
    end
    sorted_array << smallest_word
    unsorted_array.delete_at(unsorted_array.index(smallest_word))
    # unsorted_array.delete(smallest_word)
    # Mal porque si hay repetidos les elimina todos en lugar de ordenarles
    recursive_sort(unsorted_array, sorted_array)
  end
  sorted_array
end

def sort_master(arr)
  return arr if arr.length <= 1

  # Se usa .pop para que la variable 'more' no le seleccione nuevamente con variantes como .last
  middle = arr.pop
  less = arr.select{|n| n < middle}
  more = arr.select{|n| n >= middle}

  sort(less) + [middle] + sort(more)

end