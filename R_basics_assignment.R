# Vectors
first_name = c("Johnny", "Angelina", "Tony", "Amy")
fgender = factor(c("m", "f", "m", "f"))
company_years = c(2, 9, 7, 1)
month_sales = c(1420.29, 2900.57, 1900.43, 1400.91)
cust_feed = c(8.0, 9.8, 6.1, 8.6)

# Data Frame
df1 = data.frame(first_name, fgender, company_years, month_sales, cust_feed)

# data frame summary
summary(df1)
# True mean
mean(df1[[4]])

#EOF