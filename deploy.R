## deploy.R ##

library(shinyapps)

deployApp("exploreSIS_node_lrp", account = "joshh")
deployApp("exploreSIS_node_lrp", account = "tbdsolutions")

# Get info about ShinyApps accounts

accounts()
accountInfo("joshh")
accountInfo("tbdsolutions")