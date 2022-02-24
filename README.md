# Pewlett-Hackard-Analysis

## Overview of the analysis:

A company's baby boomer cohort will be retiring at a rapid rate. The company wants to who would be retiring in the next few years, who would meet the criteria for retirement packages and how many positions will come available as a result.

In this analysis we will determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. It will prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

After reviewing the employee files for Pewlett Hackard, an entity relationship diagram was created using quick database diagrams to gather and organize the key elements from various data tables. The data was imported using postgres and the pgAdmin interface. SQL queries were written to create data tables by joining primary keys from different data sets together and establishing foreign keys. 


## Results:
1. With the first review of creating a list of potential "silver tsunamis," the query resulted in many duplicates due having multiple positions.
2. Using the 'distinct on' SQL script, the duplicates were removed leaving the most recent job title to create a unique list of retiring employees.
3. Retiring Counts by Title for a total of 90,398 potential retirees.
4. Mentor Eligibility List includes 1549 employees born in 1965. 


## Summary:
1. The "silver tsunami" will have a significant impact of leaving 90,398 vacancies.
2. Using the criteria of those born in 1965, the potential mentee list is 1,549 employees. There are definitely not enough employees to replace the ones that will be leaving.
3. It would be highly suggested that the company hires and uses a mentorship program.
