#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit<-revenue-expenses
profit


paftertax<-round(0.7*(profit),2)
paftertax

profitmargin<- round((paftertax/revenue),2)*100
profitmargin

Z<-mean(revenue)

goodmonths<- revenue>Z
goodmonths

badmonths<- revenue<Z
badmonths


W<-max(paftertax)
bestmonth<- paftertax >= max(paftertax)
bestmonth

y<-min(paftertax)
worstmonth<- paftertax <= min(paftertax)
worstmonth


