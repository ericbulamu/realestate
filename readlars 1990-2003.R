
setwd("C:/Users/User/Desktop/realstate/data/HMS.F1990.LARS/HMS.F1993.LARS")

delimiters <- c(4,10,1, 1,1,1,5,1,4, 2,3,7,1,1,1,1,4,1,1,1,1,1,7)



dat <- read.fwf("xao", delimiters)
dat[,9] <- as.character(dat[,9])
dat[,9] <- gsub(" +", "", dat[,9])


colnames(dat) <- c("Year_of_data", "Respondent_ID", "Agency_Code", "Type_of_Loan", "Purpose_of_Loan",
                   "Occupancy", "Amount_of_Loan", "Type_of_Action_Taken", "MSA_of_Property", "State_Code","County_Code",
                   "Census_Tract_Number","Applicant_Race","Co-Applicant_Race","Applicant_Sex","Co-Applicant_Sex",
                   "Applicant_Income","Type_of_Purchaser","Denial_Reason_1",
                   "Denial_Reason_2","Denial_Reason_3","Edit_Status","Sequence_Number")

write.csv2(dat, "xao.csv", row.names = FALSE)

sum(delimiters)
