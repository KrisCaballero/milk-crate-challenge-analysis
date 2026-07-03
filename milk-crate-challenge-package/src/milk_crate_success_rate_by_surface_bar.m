%% milk_crate_success_rate_by_surface_bar_graph
%  Visualizing rates of injuries by ground surface type from the Milk Crate Challenge.
%
%  Included is a spreadsheet (milkcrate.csv) featuring manually-collected datasets
%  this script requires and loads, generating a bar graph showing participants' successes
%  by ground surface in which the crate stack was built on (e.g. cement, grass).
%  This generates a bar graph displaying frequencies of successes occurring by way of
%  ground surface, where both the stack and the challenge took place.
%
%
%
%  INPUT: milkcrate.csv
%         This CSV contains "Surface" column: string values indicating ground surface;
%         plus, the "Outcome" column with "S" for successs, and or "F" for failure.
%
%
%
%  OUTPUT: A bar graph displaying injury rates by surface type.
%          This figure contains:
%          - Bar graph title
%          - "Surface" label on the X-axis
%          - Success rate--0 or 1--on the Y-axis
%
%
%
%  USAGE: Run the script in MATLAB
%         >>> milk_crate_success_rate_by_surface_bar
%
%         Double check that file milkcrate.csv is in the same directory, or
%         in MATLAB's active project folder.
%
%
%
%  NOTES:
%       - Success rate is calculated using the following: successRate / surfaces.
%       - All data in milkcrate.csv were tallied manually from available videos online,
%         part of the author's independent research.
%       - This is one of several scripts part of a larger analysis visualizing and
%         examining statistical patterns in the Milk Crate Challenge.
%
%
%
%  Author: Kris Caballero
%  Date: June 23, 2026 @ 12:11am PST
%  Version: 1.0
%  MATLAB Compatibility: R2024b or later

clc; clear;

% Load data
data = readtable('milkcrate.csv');

% Extract surfaces
surfaces = unique(data.Surface);
successRate = zeros(size(surfaces));

% Calculate the successes
for i = 1:length(surfaces);
    mask = strcmp(data.Surface, surfaces{i});
    total = sum(mask);
    success = sum(strcmp(data.Outcome(mask), 'S'));
    successRate(i) = success / total;
end

% Plot
figure;
bar(successRate, 'm');
set(gca, 'XTickLabel', surfaces);
title('Milk Crate Challenge: Success Rate by Surface');
ylabel('Success Rate');
xtickangle(45);
grid on;
