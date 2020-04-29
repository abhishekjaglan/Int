
install.packages("rvest")
library(rvest)
library(dplyr)

# SRK
page <- read_html("https://en.wikipedia.org/wiki/Shah_Rukh_Khan")
page
selector <- "body"
sel <- "#firstHeading"
node <- html_node(page, css = selector)
body <- html_text(node)
node <- html_node(page,css = sel)
name_srk <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg"
download.file(url = link,destfile = "srk.jpg")

#amitabh bachan
page1 <- read_html("https://en.wikipedia.org/wiki/Amitabh_Bachchan")
node <- html_node(page1, css = selector)
body <- html_text(node)
node <- html_node(page1,css = sel)
name_amitab <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/6/65/Amitabh_Bachchan_KBC5_Press.jpg"
download.file(url = link,destfile = "amitabh.jpg")


#aamir khan
page2 <- read_html("https://en.wikipedia.org/wiki/Aamir_Khan")
node <- html_node(page2, css = selector)
body <- html_text(node)
node <- html_node(page2,css = sel)
name_amir <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/b/ba/Aamir_Khan_From_The_NDTV_Greenathon_at_Yash_Raj_Studios_%2811%29.jpg"
download.file(url = link,destfile = "amir.jpg")

#salman khan
page3 <- read_html("https://en.wikipedia.org/wiki/Salman_Khan")
node <- html_node(page3, css = selector)
body <- html_text(node)
node <- html_node(page3,css = sel)
name_salman <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/8/81/Salman_Khan_filmfare.jpg"
download.file(url = link,destfile = "salman.jpg")

#akshay kumar
page4 <- read_html("https://en.wikipedia.org/wiki/Akshay_Kumar")
node <- html_node(page4, css = selector)
body <- html_text(node)
node <- html_node(page4,css = sel)
name_akshay <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/2/2e/Akshay_Kumar.jpg"
download.file(url = link,destfile = "akshay.jpg")

#priyanka
page5 <- read_html("https://en.wikipedia.org/wiki/Priyanka_Chopra_Jonas")
node <- html_node(page5, css = selector)
body <- html_text(node)
node <- html_node(page5,css = sel)
name_priyanka <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/6/6c/Priyanka-chopra-gesf-2018-7565.jpg"
download.file(url = link,destfile = "priyanka.jpg")

#deepika P
page6 <- read_html("https://en.wikipedia.org/wiki/Deepika_Padukone")
node <- html_node(page6, css = selector)
body <- html_text(node)
node <- html_node(page6,css = sel)
name_deepika <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/b/b6/Deepika_Padukone_Cannes_2018_%28cropped%29.jpg"
download.file(url = link,destfile = "deepika.jpg")

#Aishwarya
page7 <- read_html("https://en.wikipedia.org/wiki/Aishwarya_Rai_Bachchan")
node <- html_node(page7, css = selector)
body <- html_text(node)
node <- html_node(page7,css = sel)
name_aishwarya <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/3/3a/Aishwarya_Rai_Cannes_2017.jpg"
download.file(url = link,destfile = "aishwarya.jpg")

#katrina kaif
page8 <- read_html("https://en.wikipedia.org/wiki/Katrina_Kaif")
node <- html_node(page8, css = selector)
body <- html_text(node)
node <- html_node(page8,css = sel)
name_katrina <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/8/8b/Katrina_Kaif_promoting_Bharat_in_2019.jpg"
download.file(url = link,destfile = "katrina.jpg")

#kareena kapoor
page9 <- read_html("https://en.wikipedia.org/wiki/Kareena_Kapoor_Khan")
node <- html_node(page9, css = selector)
body <- html_text(node)
node <- html_node(page9,css = sel)
name_kareena <- html_text(node)
link <- "https://upload.wikimedia.org/wikipedia/commons/f/f8/Kareena_Kapoor_in_2018.jpg"
download.file(url = link,destfile = "kareena.jpg")

library(EBImage)
setwd("~/Desktop/bollywood")
pics <- c('srk.jpg','amitabh.jpg','amir.jpg','salman.jpg','akshay.jpg','priyanka.jpg','deepika.jpg','aishwarya.jpg','katrina.jpg','kareena.jpg')
pic_link <- list()
pic_link <- c('https://upload.wikimedia.org/wikipedia/commons/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg','https://upload.wikimedia.org/wikipedia/commons/6/65/Amitabh_Bachchan_KBC5_Press.jpg','https://upload.wikimedia.org/wikipedia/commons/b/ba/Aamir_Khan_From_The_NDTV_Greenathon_at_Yash_Raj_Studios_%2811%29.jpg','https://upload.wikimedia.org/wikipedia/commons/8/81/Salman_Khan_filmfare.jpg','https://upload.wikimedia.org/wikipedia/commons/2/2e/Akshay_Kumar.jpg','https://upload.wikimedia.org/wikipedia/commons/6/6c/Priyanka-chopra-gesf-2018-7565.jpg','https://upload.wikimedia.org/wikipedia/commons/b/b6/Deepika_Padukone_Cannes_2018_%28cropped%29.jpg','https://upload.wikimedia.org/wikipedia/commons/3/3a/Aishwarya_Rai_Cannes_2017.jpg','https://upload.wikimedia.org/wikipedia/commons/8/8b/Katrina_Kaif_promoting_Bharat_in_2019.jpg','https://upload.wikimedia.org/wikipedia/commons/f/f8/Kareena_Kapoor_in_2018.jpg')
mypic <- list()
for (i in 1:10){
  mypic[[i]] <- readImage(pics[i])
}
celebrity <- data.frame(nrow(10),ncol(4)) 
names <- list()
names <- c(name_srk,name_amitab,name_amir,name_salman,name_akshay,name_priyanka,name_deepika,name_aishwarya,name_katrina,name_kareena)
for(i in 1:10){
  celebrity[i,1]<-names[[i]]
}
p_type <- list()
p_type <- c('Logician','Leader, with extra-ordinary drive and determination','INFP Mediator','enterprising, ambitious and determined','upbeat and often inspiring','utopian','ESFP','INFJ','extroverted and optimistic','highly independent and self-sufficient')
for(i in 1:10){
  celebrity[i,2]<-p_type[[i]]
}

for(i in 1:10){
  celebrity[i,4]<-(mypic[i])
}
for(i in 1:10){
  celebrity[i,3]<- pic_link[[i]]
}
celebrity

colnames(celebrity)<-c('Name','Personality Type','Image Link','Image')

celebrity ##dataset##
