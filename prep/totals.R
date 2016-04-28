## totals.R ##
library(sqldf)

# Make a dataframe with total # needing assessment per CMHSP

# A simple example using manual entry
totals<-sqldf("
            select 'All' as agency,.8*count(distinct mcaid_id) as total 
            from cmh_map 
            union
            select cmhsp_nm as agency,.8*count(distinct mcaid_id)  as total
            from cmh_map 
            group by cmhsp_nm")

write.csv(totals, "data/totals.csv")
