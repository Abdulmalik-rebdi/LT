
library(tidyverse)
library(gt)



Titanic = read.csv('./titanic.csv')

  
Titanic %>% 
  gt() %>% 
  tab_header(
    title = md("Titanic "),
    subtitle =md(" British luxury passenger liner that sank on April 14–15, 1912")
    
  )
min(Titanic$fare)
  
Titanic %>% 
    gt(rowname_col = 'survived') %>% 
    tab_header(
      title = md("Titanic "),
      subtitle =md(" British luxury passenger liner that sank on April 14–15, 1912")
      
    )
  



Titanic %>% 
  gt(rowname_col = 'survived' , groupname_col ='pclass'	 ) %>% 
  tab_header(
    title = md("Titanic"),
    subtitle =md(" British luxury passenger liner that sank on April 14–15, 1912")  
    
  )



Titanic %>% 
  gt(rowname_col = 'survived' , groupname_col ='pclass'	 ) %>% 
  tab_header(
    title = md("Titanic"),
    subtitle =md(" British luxury passenger liner that sank on April 14–15, 1912")  
    
  ) %>% fmt_currency(columns = fare)
  


Titanic %>% 
  gt(rowname_col = 'survived' , groupname_col ='pclass'	 ) %>% 
  tab_header(
    title = md("Titanic"),
    subtitle =md(" British luxury passenger liner that sank on April 14–15, 1912")  
    
  ) %>% fmt_currency(columns = fare) %>% 
  fmt_missing(columns = everything())




  



Titanic %>% 
  gt(rowname_col = 'survived' , groupname_col ='pclass'	 ) %>% 
  tab_header(
    title = md("Titanic"),
    subtitle =md(" British luxury passenger liner that sank on April 14–15, 1912")  
    
  ) %>% fmt_currency(columns = fare) %>% 
  fmt_missing(columns = everything())   %>% 
  tab_spanner(
    label = "Location",
    columns = c(cabin, embarked) )
    




Titanic %>% 
  gt(rowname_col = 'survived' , groupname_col ='pclass'	 ) %>% 
  tab_header(
    title = md("Titanic"),
    subtitle =md(" British luxury passenger liner that sank on April 14–15, 1912")  
    
  ) %>% fmt_currency(columns = fare) %>% 
  fmt_missing(columns = everything())   %>% 
  tab_spanner(
    label = "Location",
    columns = c(cabin, embarked) ) %>%
  tab_source_note(
    source_note = md(
      "Source: https://www.kaggle.com/competitions/titanic/data"
    )
  ) 




Titanic %>% 
  gt(rowname_col = 'survived' , groupname_col ='pclass'	 ) %>% 
  tab_header(
    title = md("Titanic"),
    subtitle =md(" British luxury passenger liner that sank on April 14–15, 1912")  
    
  ) %>% fmt_currency(columns = fare) %>% 
  fmt_missing(columns = everything())   %>% 
  tab_spanner(
    label = "Location",
    columns = c(cabin, embarked) ) %>%
  tab_source_note(
    source_note = md(
      "Source: https://www.kaggle.com/competitions/titanic/data"
    )
  ) 




