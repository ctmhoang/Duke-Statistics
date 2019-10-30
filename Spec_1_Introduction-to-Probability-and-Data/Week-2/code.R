# It's Lite version I wrote to answers question if you want a full version then you to R-markdown version


library(statsr)
library(dplyr)
library(ggplot2)

data(nycflights)

tibble(sfo_feb_flights)

ggplot(data = sfo_feb_flights, aes(x = arr_delay)) + geom_histogram()

sfo_feb_flights %>%
  group_by(carrier) %>%
  summarise( IR = IQR(arr_delay), n = n())
  
  
  nycflights %>%
  group_by(month) %>%
  summarise(mean_dd = mean(dep_delay)) %>%
  arrange(desc(mean_dd))
  
  
  
  nycflights %>%
  group_by(month) %>%
  summarise(median_dd = median(dep_delay)) %>%
  arrange(desc(median_dd))
  
  
  nycflights %>%
  group_by(origin) %>%
  summarise(ot_dep_rate = sum(dep_type == "on time") / n() *100) %>%
  arrange(desc(ot_dep_rate))
  
  
  nycflights <- nycflights %>%
  mutate(avg_speed = distance / (air_time* 60) )
nycflights %>%
  filter(avg_speed == max(avg_speed)) %>%
  select(avg_speed, tailnum)
  
  
  ggplot(data = nycflights, aes(x = distance, y = avg_speed)) +
  geom_point()
  
  
  nycflights %>% group_by(dep_type) %>% summarise(otr = sum(arr_type == "on time") / n() )

  
  #NOTICE : & OR && IN R DIFFER TO OTHER LANGUAGES -_-. SO NEED TO DIVIDE IT TO w PARTS
