def rovarizer(mening:)
  i=0
  konsonant_lista = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z"]
  mening_lista=mening.split("")
  mening_lista.each do |bokstav|
    if konsonant_lista.include?(bokstav.capitalize)
      p "hej"
      mening_lista[i] = bokstav + "o" + bokstav
      p mening_lista
    end
    i+=1
    p i

    end

end

rovarizer(mening:"Babis")