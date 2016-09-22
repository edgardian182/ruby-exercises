=begin
  - Se pasa un Array con varias palabras
  - Devolver paralabras separadas por ',' y la ultima con 'y'
  - Si solo hay una palabra devolver la palabra y si no hay debolver vacio ""
=end

def phrase(arr)
  if arr.length > 1
    arr.join(', ').reverse.sub(',','y ').reverse
  else
    arr.join
  end
end