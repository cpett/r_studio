library("tidyr")
library("dplyr")

auc = read.csv("datasets/auction.csv")
head(auc)
summary(auc)
sub = sample_frac(auc, .2)
sub$Make
attach(sub)
plot(Make, MMRCurrentAuctionAveragePrice)

# can be bad, distribution depends on no. bins
hist(sub$MMRCurrentAuctionAveragePrice)
# better
plot(density(sub$MMRCurrentAuctionAveragePrice))

toyota = filter(sub, Make == "TOYOTA")
toyota
# can be bad, distribution depends on no. bins
hist(toyota$MMRCurrentAuctionAveragePrice)
# better
plot(density(toyota$MMRCurrentAuctionAveragePrice))
plot(density(toyota$VehYear))

plot(VehYear, MMRCurrentAuctionAveragePrice)
plot(MMRCurrentAuctionAveragePrice, VehYear)
plot(VehOdo, VehBCost)
