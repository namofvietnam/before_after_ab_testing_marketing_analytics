# Pre-post A/B Testing for Marketing
This repository hosts data and analytics files of a before-after A/B testing project from a large e-commerce retailer in Massachusetts.

## Project Context
A large e-commerce retailer in Massachusetts synthesized a dataset that emulates a controlled before-after A/B testing experiment and organized a Hackathon in which student teams need to figure out how to analyze the results.
__Disclaimer:__ I have made every efforts to anonymize the company by removing the brand name and shuffling characters in the SKU. Even if by any chance the company is identified, no harm is conceived because the data is synthesized (i.e., not real data). No proprietary information can be extracted from this project.

## Repository Details
### Files
- Data
  - ab_testing_data.csv: the raw data from the company
  - aggregated_ab_testing_data.csv: this file is not uploaded separately but embedded in the Tableau Workbook and documented in the Jupyter notebook
  - differenced_data.csv: the ultimate table view for difference-in-difference statistical analysis (also used in visualization)
- Analytics:
  - difference_in_difference_ab_testing_python.ipynb: data management/manipulation and statistics (with pingouin package)
  - difference_in_difference_ab_testing_r.r: same statistics techniques in R (with car and onewaytests packages)
- Visualization:
  - controlled_before_after_visualization.twbx: Tableau visualizations of metrics before and after between control and treatment groups

### Techniques:
- Aggregation and pivot table in Python
- Levene's test
- ANOVA test
- Welch's test
- Tukey's pairwise comparison
- Games-Howell pairwise comparison
- Stratified-sampling from one group based on the composition of another group
