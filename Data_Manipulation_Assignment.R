library("tidyr")

messy_data = data.frame(
  office_location = c("NY_New York", "TX_Houston", "CA_Los Angeles", "CO_Denver"),
  bike_sales = c(20000, 9000, 5000, 15000),
  helmet_sales = c(5000, 1000, 800, 4000),
  bike_repair_sales = c(4000, 1000, 400, 5000)
)
messy_data

messy_data = separate(messy_data, office_location, c("state", "city"), sep="_")
messy_data


library(datasets)
mtcars_data = mtcars
head(mtcars_data)


library("dplyr")

sub_cars = sample_frac(mtcars_data, 0.2)
# filter for mpg > 30
filter(sub_cars, mpg>20)
filter(mtcars_data, mpg>30)

mutate(mtcars_data, gears_to_carbs=gear/carb)
