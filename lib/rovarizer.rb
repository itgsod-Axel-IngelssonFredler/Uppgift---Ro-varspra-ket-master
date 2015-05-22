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

rovarize(cleartext:"Bäbis är dum")