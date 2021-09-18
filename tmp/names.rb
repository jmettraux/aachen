
# :map q :.w >> tmp/names.txt<ENTER>


frankish_male_names = %w{
  Adalbert
  Agobard
  Arduin
  Audomar
  Bernhard
  Burchard
  Carloman
  Chilperic
  Dagobert
  Drogo
  Eberhard
  Ebrulf
  Faro
  Fredegar
  Fridolin
  Fulk
  Gerald
  Goscelin
  Gunthar
  Hagen
  Hartgard
  Hilduin
  Humbert
  Ingomer
  Jocelin
  Karlmann
  Leodegar
  Leutfried
  Martin
  Nordbert
  Odo
  Ouen
  Pancras
  Philibert
  Radbod
  Reginald
  Sigefroy
  Sigismund
  Tescelin
  Theodemir
  Theutgaud
  Uda
  Unroch
  Vigor
  Walaric
  Wichmann
  Wulfram
  Zwentibold
}

frankish_female_names = %w{
  Adelhaid
  Adalmut
  Agatha
  Bergundis
  Chlodeswinthe
  Clothild
  Danburga
  Deuteria
  Engelberga
  Ermina
  Fara
  Fredegunde
  Geneva
  Gisela
  Helinda
  Herenfrida
  Hildberta
  Hruodgarda
  Imma
  Ingelburga
  Irmengard
  Itta
  Joveta
  Landrada
  Leuekin
  Liedrada
  Mauriana
  Merofled
  Merwig
  Nidlebis
  Nordrada
  Ogiva
  Olga
  Otberta
  Plectrudis
  Radeken
  Rainilda
  Regana
  Rosamund
  Rotlenda
  Sigeberta
  Susanna
  Swanahilde
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
  Balorix
  Bellognatus
  Borvonicus
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
  Dubnotalus
  Eburo
  Epomedius
  Excingomarus
  Gabrius
  Gennalo
  Gnatusius
  Haesus
  Iccalus
  Ientinus
  Itavus
  Licno
  Litgenus
  Losagni
  Maccarus
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
  Viriodacus
  Vocorix
  Vridolanos
}

gallic_female_names = %w{
  Abrezta
  Admata
  Albina
  Aventina
  Ballatulla
  Banna
  Betudaca
  Brogimara
  Cabrilla
  Caranta
  Centa
  Danissa
  Devignata
  Donisia
  Dubna
  Eburia
  Epponina
  Fimmilene
  Friagabi
  Gabra
  Genna
  Iccia
  Itta
  Kareia
  Karina
  Leucimara
  Loucitta
  Luppa
  Mandelana
  Meducena
  Moria
  Namusa
  Nantia
  Nertomaria
  Ollia
  Origena
  Oxidubna
  Peruia
  Regina
  Regula
  Rotania
  Samaxa
  Segolia
  Sila
  Tascilla
  Trocina
  Veleda
  Vlatuna
}

roman_male_names = %w{
  Aetius
  Aemilius
  Antonius
  Appius
  Armenius
  Augustus
  Aulus
  Caelus
  Caius
  Calpurnius
  Camillus
  Cassius
  Castorius
  Cnaeus
  Decimus
  Drusus
  Eborius
  Eugenus
  Fabius
  Falco
  Faustus
  Felix
  Flavius
  Gallus
  Germanicus
  Julianus
  Livius
  Longinius
  Lucius
  Marcellus
  Marcus
  Munatius
  Maximus
  Numerius
  Octavianus
  Paulus
  Primus
  Publius
  Quintus
  Secundus
  Sempronius
  Septimus
  Sextus
  Tertius
  Tiberius
  Titus
  Tullus
  Valerius
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
  Calpurnia
  Camilia
  Dillia
  Domitia
  Drusilla
  Eboria
  Egnatia
  Ennia
  Fabiana
  Festa
  Flavia
  Florentia
  Galeria
  Gemella
  Germanica
  Helvetia
  Hortensa
  Icilia
  Iovia
  Julia
  Laetoria
  Lentula
  Lucilia
  Lucretia
  Marcia
  Nepia
  Octavia
  Orania
  Orissa
  Plautia
  Pompeia
  Quinctia
  Quintiliana
  Romana
  Rusonia
  Scribonia
  Tullia
  Umbria
  Valeria
  Victorina
}

puts "| d6d8 | Frankish M | F | Gallic M | F | Roman M | F |"
puts "|:----:|:----------:|:-:|:--------:|:-:|:-------:|:-:|"

d0, d1 = 1, 0
frankish_male_names.each_with_index do |fmn, i|
  d1 = d1 + 1
  if d1 > 8
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
