#1 



library(stringr)

nowy_tekst_1 = "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"

nowy_tekst_2 = "TERYT 22; pomorskie;   Gdańsk; 12 C ; B"


str_sub(c(nowy_tekst_1), start = 38, end = 45)
str_sub(c(nowy_tekst_2), start = 35, end = 45)

#______________________________________________________________________________
#2




horoskop = function(imie, miesiac){
  
  if(miesiac %in% c(2, 4, 6, 8, 10, 12)){
    
    cat(paste("Osoba o imieniu", imie, "będzie miała szczęście."))
  
    } else {
  
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście."))
  
}
}

horoskop("Małgorzata", 2)  

#______________________________________________________________________________
#3

horoskop = function(imie, miesiac){
  
  if(miesiac %in% c(2, 4, 6, 8, 10, 12) |
    
    (str_detect(imie, pattern = "K") |
   
    str_detect(imie, pattern = "M") | 
    
    str_detect(imie, pattern = "Z"))){
  
  
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście."))
  
  
  } else {
  
  
  cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście."))

}
}

horoskop("Anna", 7)

#______________________________________________________________________________
#4

pomiary = ("2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 
           2019-marzec-14: 14.3")


str_sub(c(pomiary), start = 13, end = 16)
str_sub(c(pomiary), start = 29, end = 32)

str_sub(c(pomiary), start = 47, end = 50)
str_sub(c(pomiary), start = 81, end = 87)


#______________________________________________________________________________
#5

wartosci = ("2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 
                                          2019-marzec-14: 14.3")
wartosci


str_extract_all(wartosci, pattern = "[0.- 9.]*")
 
class(wartosci)

#Otrzymany wynik należy do klasy character.





