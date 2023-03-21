######################################### 
#                  MySQL                #
######################################### 
#                                       #
# we focused on connecting R to MySQL   #
# databases.                            #
#                                       #
######################################### 


################# LIBRARIES ################

library(DBI)
library(RMySQL) 
library(dplyr)

################# CONNECT ################# 

# Establish the connection
portaldb <- dbConnect(MySQL(), 
                      user = "",
                      host = "",
                      password = "",
                      dname = "geneticanalysis")

# Tables contain in the db
dbListTables(portaldb)

# List contain in the db
dbListConnections(portaldb)

############### QUERIES ################### 

dbGetQuery(portaldb,"SELECT * FROM ____")

############### DISCONNECT ################

dbDisconnect(portaldb)

