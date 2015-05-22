def rovarize(cleartext:)
  string=""
  i=0
  konsonant_lista = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z"]
  mening_lista=cleartext.split("")
  mening_lista.each do |bokstav|
    if konsonant_lista.include?(bokstav.capitalize)
      mening_lista[i] = bokstav + "o" + bokstav
      string += mening_lista[i]
    else
      string += mening_lista[i]
    end
    i+=1
  end
  return string
end

def derovarize(cipher:)
  i=0
  konsonant_lista = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z"]
  cleartext = cipher.split("")
  while i < cleartext.count
    if konsonant_lista.include?(cleartext[i].capitalize)
      cleartext.delete_at(i+1)
      cleartext.delete_at(i+1)
    end
    i+=1
  end
  return cleartext.join
end



rovarize(cleartext:"Bäbis är dum")
derovarize(cipher:"Bobäbobisos äror dodumom")