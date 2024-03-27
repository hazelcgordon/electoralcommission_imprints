## Code changes from pilot datawrangling_code to main data wrangling code (not yet created)

In the process of creating the analysis plan, some mistakes were spotted in the original qualtrics survey:

- The strongly agree - strongly disagree response options were slightly different, with some versions including 'somewhat agree/disagree' and some just 'agree/disagree'.
 - This meant two separate transformation functions were created for the pilot code
- In the name recall measure, one of the correct campaigner names was missed off, 'Campaign For a Better Britain'. This meant participant recall could not be fully captured, and may have led them to select an incorrect option.
- The response options for the institutional trust measures including unecessary text information '0 - none at all'.
 - This is changes to just '0' on qualtrics, removing the need for the function to transform this response option.
 
## Discussion about the control variables to be included, 21st March 2024

### Control variables

Summary

- Decision was made to keep control variables to a minimal, only including them if asked by reviewers
- Ethnicity and left-right political ideology not to be collected, as there is no theoretical justification to expect these to influence the outcome

### 22/04/2024

On March 21st, the team discussed needing justifications for the control variables we include. I had a look through other disclaimer research, finding a lot don't include controls. However, the Dobber, Kreukemeier et al 2023 (the effect of traffic light veracity labels) include age, gender and political interest.

Dobber et al 2023 (shielding citizens) alternatively collected age, gender and political interest information to check for successful randomisation into conditions, but not as controls in the model. So it would make sense to use the control variables in this way as well.

In our study I think there is still good reason to include a few specific controls due to the high real life validity of our content, which means we have less control over some aspects compared to other studies. However, there would need to be a strong rationale for how each control relates to the experimental stimuli.

Aspects to consider:

- **Agreement with content**: needed as agreement/political alignment is a strong predictor of campaign content evaluation
- **Political party identification**: another measure of political alignment that would be useful in understanding loyalty to the conservative party, who are criticised in the posts
- **Social media frequency of use**: this might impact familiarity with the aesthetic layout which could make the content easier to navigate for some participants compared to others, impacting how easily they can identify the imprint - in this case we would only need to capture frequency of Facebook use.
- **Trust in Facebook as a platform**: not currently in the list, but this could be expected to impact participants' evaluations of the content, particularly when evaluating trust. For example, some people might think 'can't trust anything you see on Facebook'.
- **Age, gender, education, political interest, regulation knowledge**: included in the survey to check for successful randomisation across conditions, but not used as controls in the models.

My suggestion would be to check each model with the following controls: 

- Agreement
- Conservative party support (as a binary variable)
- Facebook use frequency
- Trust in Facebook

If we went with these suggestions, I would remove from the survey:

- Institutional trust
- Social media use and frequency for all but Facebook

Ethnicity and left-right political ideology would also not be added to qualtrics.

### 25/03/2024 update

- 


## To do

The following lists the changes that will be made to the data wrangling code once the issues with the qualtrics survey have been corrected to process the main dataset:

- [] Add in code to deal with exclusions
- [] When forming new data frames, include left-right ideology measure
- [] Delete the unused agree-disagree response option transformation function
- [] Delete institutional trust unused text '0 - none at all' function
- [] Check and potentially change the control variables added into the imprint_df dataframe to ensure all are present in it
- Remove 'this is a pilot study' from debrief


#H1b - need to make it clear that by uninformative we mean an imprint that does not provide partisan cue information. We might want to change the language here to make this clearer.

#H2b - I think we need to say how this knowledge will be used....as this feels to vague at present



