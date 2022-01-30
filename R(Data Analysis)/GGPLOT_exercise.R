
movies<-read.csv(file.choose(),stringsAsFactors = T)
movies

fmovies<- movies[movies$Genre=="action" | movies$Genre=="adventure" | movies$Genre=="animation"|
                   movies$Genre=="comedy" | movies$Genre=="drama", ]
fmovies

filmovies<- fmovies[fmovies$Studio == "Buena Vista Studios"|fmovies$Studio =="Fox"|
                      fmovies$Studio =="Paramount Pictures" | fmovies$Studio == "Sony"|
                      fmovies$Studio =="Universal"| fmovies$Studio =="WB",]
filmovies

colnames(filmovies) <- c("day","director","Genre","Movie","date","Studio","Adjusted","budget","gross","imdb","movielens","overseas","overseasper","profit","profitper","runtime","us","grossus")


library(ggplot2)
p<- ggplot(data=filmovies, aes(x=Genre,y=grossus))
q<- p + geom_jitter(aes(color=Studio,size=budget)) +
 geom_boxplot(size=1.2,alpha=0.5)

# THEME
q +xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")+
  theme(axis.title.x = element_text(color="Darkblue",size=20),
        axis.title.y = element_text(color="Darkblue",size=20),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10),
        
        legend.title = element_text(size=20),
        legend.text = element_text(size=10),
        
        
        plot.title = element_text(size=30))













