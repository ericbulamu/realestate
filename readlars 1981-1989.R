setwd("C:/Users/User/Desktop/realstate/data/HMS.F1990.LARS/1987")

delimiters <- c(28,8, 4,6,2,3,1, 2,1,4,9,1,4,9,1,4,9,1,4,9,1,4,9,1,1)
sum(delimiters)


dat <- read.fwf("HMD_FACDSB87.txt", delimiters)


colnames(dat) <- c("Respondent_Name", 
                   "Respondent_ID", 
                   "MSA_of_Report",
                   "Census_Tract_Number",
                   "State",
                   "Country",
"Supervisory_Agency_COde",
"Census Validity Flag (02-09, 14,17 are obsolete codes)",
" VA, FHA, FmHA Loans: Validity Flag", 
"Va, FHA , FmHa Loans: Number of Loans", 
"VA, FHA, FmHA  Loans: Total Amount ($)", 
"Conventional Loans: Validity Flag",
"Conventional_Loans: Number of
Loans",
"Conventional 
Loans: Total 
Amount ($)",
"Home Improvement:
Validity Flag",
"Home Improvement:
Number or Loans",
"Home Improvement:
Total Amount ($)",
"All Multi Family 
Validity Flag",
"All Multi Family:
Number of Loans",
"All Multi - Family:
Total Amount ($)",
"Non - Occupant
Loans: Validity 1 
Flag",
"Non Occupant
Loans: Number of
Loans",
"Non - Occupant 
Loans: Total
Amount ($)",
"Record Quality
Flag",
"Filler")

write.csv2(dat, "HMS.F1987.csv", row.names = FALSE)