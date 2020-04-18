ami = {
    "prénom"          => "Jean-Paul",
    "nom de famille"  => "Goret",
    "adresse"         => "Rue de l'église, 26",
    "ville"           => "Houtsiplou",
    "province"        => "Liège"
}
ami["pays"] = "Belgique"
ami.each do |clef, valeur|
    puts clef + " => " + valeur
end
puts "\n\n"
ami.each_key do |clef|
    puts clef
end
puts "\n\n"
ami.each_value do |valeur|
    puts valeur
end