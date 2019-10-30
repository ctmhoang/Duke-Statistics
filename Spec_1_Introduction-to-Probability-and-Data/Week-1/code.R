# It's Lite version I wrote to answers question if you want a full version then you to R-markdown version

library(dplyr)
library(ggplot2)
library(statsr)

data(arbuthnot)

names(arbuthnot)

arbuthnot$girls

ggplot(data = arbuthnot, aes(x = year, y = girls)) +
  geom_point()
  
ggplot(data = arbuthnot, aes(x = year, y = boys / total * 100)) +
  geom_line() +
  geom_point()
  
  
names(present)

range(present$year)


present <- present %>% mutate(total = boys + girls)
present <- present %>% mutate(prop_boys = boys/total * 100)
ggplot(data = present, aes(x = year, y = prop_boys)) + geom_line()


present <- present %>% mutate(more_boys = boys > girls)


present <- present %>% mutate(prop_boy_girl = boys / girls)

ggplot(data = present, aes(x = year, y = prop_boy_girl )) + geom_line() + geom_point()


present %>%
   arrange(desc(total))
