# Cleaning and recoding of local, PIHP-specific variables
# Anything that's not accomplished by 'readSIS.R' script from exploreSIS repo

# FOR EXAMPLE:
# Recode interviewers

sub_sis$interviewer_orig <- car::recode(sub_sis$interviewer_orig,"'' = ''")

# Recode last modified by

sub_sis$interviewer <- car::recode(sub_sis$interviewer, "'' = ''")

# Recode agencies

sub_sis$agency <- car::recode(sub_sis$agency, "'' = ''")

# Mark current SIS Interviewers to allow for filtering
# Requires access to updated list of current interviewers
# Logic easy to break until Interviewer ID/Name are standardized