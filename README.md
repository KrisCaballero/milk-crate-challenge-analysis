# "Milk Crate Challenge - Statistical Analysis with Visualizations in MATLAB"

This repository contains the full package, scientific-computing analysis of the social media trend, taking place in 2021, called the Milk Crate Challenge. Utilizing MATLAB, along with graphical visuals, all data presented have been tallied manually, by hand, from publicly-available videos analyzed with statistical methods, graphs, and a vector field. This is an independent research project demonstrating an end-to-end completion of data science: manual collection of data, cleaning, analyses, and visualization.


* How the Repository is Structured

milk-crate-challenge-package/
## src/
     - milk_crate_distribution_of_peak_heights.m
     - milk_crate_failure_by_column_histogram.m
     - milk_crate_failure_distribution_by_phase_pie_chart.m
     - milk_crate_injury_rate_by_surface_bar_graph.m
     - milk_crate_success_rate_by_surface_bar.m
     - milk_crate_vector_field.m
## data/
     - milkcrate.csv
## images/
     - milk_crate_challenge_2026_distribution_of_peak_heights.png
     - milk_crate_challenge_2026_failure_crate_column_histogram.png
     - milk_crate_challenge_2026_failure_distribution_by_phase_pie_graph.png
     - milk_crate_challenge_2026_injury_surface_bar_graph.png
     - milk_crate_challenge_2026_success_surface_bar_graph.png
     - milk_crate_challenge_2026_failure_rates_vector_field
## docs/
     - kris_caballero_march_2026_milk_crate_challenge_statistical_findings.pdf


* Project Overview

This project analyzes and studies physical strategies in part of the social media trend taking place in 2021. What this project analyzes are the following:

- Injury rate by surface type (e.g. cement, grass)
- Success rate by surface type
- Failure distribution by phase (peak, ascent, descent)
- Frequency of failure by crate column
- Peak height distribution
- Failure dynamics represented by a vector field

Social media trends, like this, is treated as a case study legitimizing as a data scientific opportunity calculated and summarized using programming tools of today.


* How to run the MATLAB code

- Clone or download the package
- Launch MATLAB
- Then run the following code:
 
  		```data = readtable('data/milkcrate.csv')
  		milk_crate_distribution_of_peak_heights```
  
or you are welcome to run any script individually

Because these scripts plots the findings visually, you can see and/or save the visuals it generates.


* Visual Graphs Included

As previously mentioned, the included visuals in this project are represented by the following:

- Distribution of Peak Heights
- Failure Rate Column (histogram)
- Failure Distribution by Phase (pie graph)
- Injury Surface Index (bar graph)
- Success Surface Index (bar graph)
- Failure rates (vector field)


* Datasets

Datasets have been labeled accordingly in abundance of manual tallying of the data per online videos. They are as follows:

- ColumnOfFailure
- Phase
- Surface
- PeakHeight
- Outcome
- Injury?
-dH_failure


* Purpose of this Conjecture

Utilization of MATLAB in demonstrating scientific, statistical findings behind social media trends: undertaking veracities the acquired data, manually extracted, conveys using mathematical methods portraying a trend's challenge with regards to winning, losing, and odds of injuries in contrast. It is an independent project fulfilled by way of extrapolating numerical undertakings that dictate safeties, and the challenge itself, in spite of participatory attempts for online clout: a technical example of data accumulation of trends, if new ones were to take place in the future.


* Author

Kris Caballero
Independent writer, quantum and scientific computing enthusiast.

* Websites:
  
         - https://kcuniversal.net
         - https://math.kcuniversal.net
         - https://plus.kcuniversal.net
         - https://coding.kcuniversal.net
         - https://publishing.kcuniversal.net
         - https://kc.kcuniversal.net


* License

Released under the MIT License.


(This README.md was written using Notepad on Microsoft Windows Pro 11.)
