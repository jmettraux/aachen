
# :map q :.w >> tmp/names.txt<ENTER>


frankish_male_names = %w{
  Adalbert
  Agobard
  Audomar
  Bernhard
  Burchard
  Carloman
  Chilperic
  Dagobert
  Drogo
  Eberhard
  Ebrulf
  Fredegar
  Fridolin
  Fulk
  Gerald
  Goscelin
  Hartgard
  Hilduin
  Ingomer
  Jocelin
  Karlmann
  Leutfried
  Martin
  Nordbert
  Odo
  Ouen
  Pancras
  Philibert
  Radbod
  Reginald
  Sigismund
  Theodemir
  Unroch
  Vigor
  Walaric
  Zwentibold
}

frankish_female_names = %w{
  Agatha
  Bergundis
  Clothild
  Danburga
  Engelberga
  Ermina
  Fara
  Fredegunde
  Geneva
  Gisela
  Helinda
  Herenfrida
  Hruodgarda
  Imma
  Irmengard
  Joveta
  Landrada
  Leuekin
  Liedrada
  Merofled
  Merwig
  Nidlebis
  Nordrada
  Ogiva
  Olga
  Plectrudis
  Radeken
  Regana
  Rosamund
  Sigeberta
  Susanna
  Teutberga
  Theodelinda
  Ultrogotha
  Vulfegundis
  Wisigard
}

gallic_male_names = %w{
  Ambigat
  Adcomaros
  Aesarius
  Allovico
  Ambaxius
  Bellognatus
  Britomartis
  Camulatucus
  Carigo
  Catamandus
  Cingessus
  Cintumarus
  Cottio
  Dano
  Divicatus
  Dobagni
  Eburo
  Excingomarus
  Gabrius
  Haesus
  Ientinus
  Losagni
  Megaravico
  Nertomaros
  Oclicnos
  Perrus
  Qasigni
  Remicus
  Sacrovir
  Segomaros
  Tanotalos
  Trito
  Ulcagni
  Venixamus
  Vocorix
  Vridolanos
}

gallic_female_names = %w{
  Admata
  Albina
  Aventina
  Betudaca
  Brogimara
  Cabrilla
  Caranta
  Centa
  Danissa
  Donisia
  Elvissa
  Epponina
  Fimmilene
  Gabra
  Genna
  Iccia
  Isosae
  Karina
  Loucitta
  Luppa
  Mandelana
  Meducena
  Moria
  Namusa
  Nertomaria
  Ollia
  Origena
  Peruia
  Regina
  Rotania
  Samaxa
  Segolia
  Sila
  Tascilla
  Veleda
  Vlatuna
}

roman_male_names = %w{
  Aetius
  Antonius
  Appius
  Augustus
  Aulus
  Caelus
  Caius
  Camillus
  Cassius
  Cnaeus
  Decimus
  Drusus
  Faustus
  Flavius
  Gallus
  Julianus
  Livius
  Lucius
  Marcellus
  Marcus
  Marcus
  Maximus
  Numerius
  Octavianus
  Paulus
  Primus
  Publius
  Publius
  Quintus
  Secundus
  Septimus
  Sextus
  Tertius
  Tiberius
  Titus
  Tullus
}

roman_female_names = %w{
  Aemilia
  Amanda
  Aquillia
  Aurelia
  Barbatia
  Bella
  Caecilia
  Caesonia
  Calpornia
  Camilia
  Domitia
  Drusilla
  Ennia
  Fabiana
  Flavia
  Florentia
  Galeria
  Helvetia
  Icilia
  Julia
  Laetoria
  Lucilia
  Lucretia
  Marcia
  Nepia
  Octavia
  Orania
  Plautia
  Pompeia
  Quinctia
  Rusonia
  Scribonia
  Tullia
  Umbria
  Valeria
  Victorina
}

puts "| d6d6 | Frankish M | F | Gallic M | F | Roman M | F |"
puts "|:----:|:----------:|:-:|:--------:|:-:|:-------:|:-:|"

d0, d1 = 1, 0
frankish_male_names.each_with_index do |fmn, i|
  d1 = d1 + 1
  if d1 > 6
    d0 = d0 + 1
    d1 = 1
  end
  puts '| ' + [
    "#{d0}#{d1}",
    fmn, frankish_female_names[i],
    gallic_male_names[i], gallic_female_names[i],
    roman_male_names[i], roman_female_names[i]
  ].join(' | ') + ' |'
end

