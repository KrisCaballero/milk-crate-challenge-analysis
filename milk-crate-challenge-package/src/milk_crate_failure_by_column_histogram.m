%% milk_crate_failure_by_column_histogram
%  Visualizing failure frequency by crate column per the Milk Crate Challenge
%
%  Included is a spreadsheet (milkcrate.csv) featuring manually-collected datasets
%  this script requires and loads, generating a histogram: the columns at which
%  participants fail most during their attempts. It is this visualization highlighting
%  the stack's structural risks in the crate's arrangement, identifying which column
%  results in the most commonly prone risks of failures, leading to possible injuries.
%
%
%
%  INPUT: milkcrate.csv
%         This CSV contains "ColumnOfFailure" column: integer values indicating column
%         where the participant failed. Also contains the "Surface" column: string
%         value where the crate stack were build atop of (i.e. grass, cement).
%
%
%
%  OUTPUT: A histogram presenting frequency of failure by crate column.
%          This figure contains:
%          - Histogram title
%          - "Crate Column" per the X-axis
%          - "Failure" per the Y-axis
%          - Grid for visionary readability
%
%
%
%  USAGE: Run the script in MATLAB
%         >>> milk_crate_failure_by_column_histogram
%
%         Double check that file milkcrate.csv is in the same directory, or
%         in MATLAB's active project folder.
%
%
%
%  NOTES:
%       - NaN values per "ColumnOfFailure" have been removed.
%       - All data in milkcrate.csv were tallied manually from available videos online,
%         part of the author's independent research.
%       - This is one of several scripts part of a larger analysis visualizing and
%         examining statistical patterns in the Milk Crate Challenge.
%
%
%
%  Author: Kris Caballero
%  Date: June 23, 2026 @ 12:23am PST
%  Version: 1.0
%  MATLAB Compatibility: R2024b or later

clc; clear;

% Load dataset
data = readtable('milkcrate.csv');

% Snatch up unique surfaces
surfaces = unique(data.Surface);
successRate = zeros(size(surfaces));


% Remove "NaN" and get values via Failure Column
cols = data.ColumnOfFailure(~isnan(data.ColumnOfFailure));

% Plot the histogram
figure;
histogram(cols, 'BinMethod', 'integers');
title('Milk Crate Challenge: Failure Frequency by Column');
xlabel('Crate Column');
ylabel('Failures');
grid on;
