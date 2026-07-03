%% milk_crate_distribution_of_peak_heights
%  Visualizing peak height distributive heights per the Milk Crate Challenge
%
%  Included is a spreadsheet (milkcrate.csv) featuring manually-collected datasets
%  this script requires and loads, generating a histogram: the frequency distribution
%  of the crate's peak heights participants have reached during the challenge. This
%  visually proves the height of the crate stack reached/climbed before failing or
%  succeeding the challenge.
%
%
%
%  INPUT: milkcrate.csv
%         This CSV contains "PeakHeight" column: numerical values representing the
%         maximum crate height reached in the participants' attempts.
%
%
%
%  OUTPUT: A histogram presenting the distribution of the crate stacks' peak heights.
%          This figure contains the following information:
%          - Histogram title
%          - "Peak Height" per the X-axis
%          - "Frequency" per the Y-axis
%          - Grid for visionary readability
%
%
%
%  USAGE: Run the script in MATLAB
%         >>> milk_crate_distribution_of_peak_heights
%
%         Double check that file milkcrate.csv is in the same directory, or
%         in MATLAB's active project folder.
%
%
%
%  NOTES:
%       - All data in milkcrate.csv were tallied manually from available videos online,
%         part of the author's independent research.
%       - This is one of several scripts part of a larger analysis visualizing and
%         examining statistical patterns in the Milk Crate Challenge.
%
%
%
%  Author: Kris Caballero
%  Date: June 22, 2026 @ 11:47pm PST
%  Version: 1.0
%  MATLAB Compatibility: R2024b or later

clc; clear;

% Load dataset
data = readtable('milkcrate.csv');

% Plot histogram for dataset
figure;
histogram(data.PeakHeight);
title('Milk Crate Challenge: Distribution of Peak Heights');
xlabel('Peak Height');
ylabel('Frequency');
grid on;
