## Code changes from pilot datawrangling_code to main data wrangling code (not yet created)

In the process of creating the analysis plan, some mistakes were spotted in the original qualtrics survey:

- The strongly agree - strongly disagree response options were slightly different, with some versions including 'somewhat agree/disagree' and some just 'agree/disagree'.
 - This meant two separate transformation functions were created for the pilot code
- In the name recall measure, one of the correct campaigner names was missed off, 'Campaign For a Better Britain'. This meant participant recall could not be fully captured, and may have led them to select an incorrect option.
- Left-right wing self-identification was missed off in the demographic information section of the survey.
- The response options for the institutional trust measures including unecessary text information '0 - none at all'.
 - This is changes to just '0' on qualtrics, removing the need for the function to transform this response option.


## To do

The following lists the changes that will be made to the data wrangling code once the issues with the qualtrics survey have been corrected to process the main dataset:

[] Add in code to deal with exclusions
[] When forming new data frames, include left-right ideology measure
[] Delete the unused agree-disagree response option transformation function
[] Add in code to transform left-right ideology measure under 'variable transformations'
[] Convert left-right ideology to numeric
[] Delete institutional trust unused text '0 - none at all' function
[] Check and potentially change the control variables added into the imprint_df dataframe to ensure all are present in it