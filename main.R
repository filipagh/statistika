v1 <- c(2,1,0,4,-3)
v2 <- c(-2,3,4,5,6)

length(v1)
sum(v1)
cumsum(v1)
prod(v1)
v1/v2
v1%*%v2
cos(pi*v1)
cospi(v1)
(v3 <- seq(from=1,to=20,by=2))
v3
print(v3)
(v4 <-rep(c(1,3,2),times=4))
(v5 <-rep(c(1,3,2),times=c(1,2,4)))

A <- matrix(v4,4,3)
A
B <- matrix(v4, 4,3, byrow=TRUE)
B


studium = factor(c(1,0,0,1,1), labels = c("ib", "it"))
studium
vek <- c(18,21,20,22,19)
meno <- c("ivo", "ema", "ada", "jan", "eva")

studenti <- data.frame(meno, vek, studium)
studenti

studenti$byt <- c("i","i","d","d","i")
studenti$body <- c(5,15,20,18,7)
studenti

# iba studen "ib"
# vyber studnetov co maju viac ako 10 b z pisomky
# vyber iba "ib" a mladsich ako 20

it <- subset(studenti, studium == "ib")
it <- subset(studenti, studenti$studium == "ib")
it

v10 <- subset(studenti, studenti$body > 10)
v10

ibm20 <- subset(studenti, studenti$studium == "ib" & studenti$vek < 20)
ibm20

data(Cars93)
# View(Cars93)

# v usa vyroene
x <- subset(Cars93, Cars93$Origin =="USA")
x
# znacky od mazda
x <- subset(Cars93, Cars93$Manufacturer =="Mazda")
x
# mazdy a cena menej ako 15 000
x <- subset(Cars93, Cars93$Manufacturer =="Mazda" & Cars93$Price < 15000)
x
#  bez airbagu
x <- subset(Cars93, Cars93$AirBags =="None")
x


plot(cos, from = -2*pi,to=2*pi,xlab = "os x",ylab = "cos x")

par(mfrow = c(1,2))  # rozdelime obrazovky na 2 okna
xx <- seq(-2 * pi, 2* pi, length=20)
xx

plot(xx,cos(xx),type = "b")
par(mfrow = c(1,1))  # rozdelime obrazovky na 2 okna
pie(table(studenti$studium))
pie(table(Cars93$Manufacturer))
barplot(table(studenti$studium))
barplot(table(Cars93$Manufacturer))
