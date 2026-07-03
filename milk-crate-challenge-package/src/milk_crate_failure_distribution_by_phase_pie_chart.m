%% milk_crate_failure_distribution_by_phase_pie_chart
%  Pie chart portraying failure distribution frequency by phase per the Milk Crate Challenge
%
%  Included is a spreadsheet (milkcrate.csv) featuring manually-collected datasets
%  this script requires and loads, generating a pie graph showing participants' failures
%  distributed through different phases of the challenge (e.g. peak, ascent, descent).
%  This highlights parts of the crate that triggers the most failures, let alone
%  collapse, instability, or missteps.
%
%
%
%  INPUT: milkcrate.csv
%         This CSV contains "Phase" column: string values indicating phase where
%         where the participant's failed.
%
%
%
%  OUTPUT: A pie chart displaying distribution of failure by phases.
%          This figure contains:
%          - Pie chart title
%          - Labels per "slice"
%
%
%
%  USAGE: Run the script in MATLAB
%         >>> milk_crate_failure_distribution_by_phase_pie_chart
%
%         Double check that file milkcrate.csv is in the same directory, or
%         in MATLAB's active project folder.
%
%
%
%  NOTES:
%       - Phase labels were converted to strings for consistency.
%       - All data in milkcrate.csv were tallied manually from available videos online,
%         part of the author's independent research.
%       - This is one of several scripts part of a larger analysis visualizing and
%         examining statistical patterns in the Milk Crate Challenge.
%
%
%
%  Author: Kris Caballero
%  Date: June 23, 2026 @ 12:25am PST
%  Version: 1.0
%  MATLAB Compatibility: R2024b or later

clc; clear;

% Load dataset
data = readtable('milkcrate.csv');


% Extract the phases
phases = unique(string(data.Phase));
counts = zeros(size(phases));

% Tally occurrences per phase
for i = 1:length(phases)
    counts(i) = sum(string(data.Phase) == phases(i));
end

% Convert labels
labels = cellstr(phases);

% Plot the pie chart
figure;
pie(counts, labels);
title('Milk Crate Challenge: Failure Distribution by Phase');
