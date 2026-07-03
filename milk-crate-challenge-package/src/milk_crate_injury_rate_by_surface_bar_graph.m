%% milk_crate_injury_rate_by_surface_bar_graph
%  Visualizing rates of injuries by ground surface type from the Milk Crate Challenge.
%
%  Included is a spreadsheet (milkcrate.csv) featuring manually-collected datasets
%  this script requires and loads, generating a bar graph showing participants' failures
%  by ground surface in which the crate stack was built on (e.g. cement, grass).
%  This generates a bar graph displaying how often injuries occurring by way of
%  ground surface, where both the stack and the challenge took place.
%
%
%
%  INPUT: milkcrate.csv
%         This CSV contains "Surface" column: string values indicating ground surface;
%         plus, the "Injury" column with "Yes" or "No" values.
%
%
%
%  OUTPUT: A bar graph displaying injury rates by surface type.
%          This figure contains:
%          - Bar graph title
%          - "Surface" label on the X-axis
%          - Injury rate--0 or 1--on the Y-axis
%
%
%
%  USAGE: Run the script in MATLAB
%         >>> milk_crate_injury_rate_by_surfece_bar_graph
%
%         Double check that file milkcrate.csv is in the same directory, or
%         in MATLAB's active project folder.
%
%
%
%  NOTES:
%       - Injury rates calculated using the following: injuryRate / surfaces.
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

% Extracting of surfaces
surfaces = unique(data.Surface);
injuryRate = zeros(size(surfaces));

% Compute injury rate for available surfaces
for i = 1:length(surfaces)
    mask = strcmp(data.Surface, surfaces{i});
    total = sum(mask);
    injured = sum(strcmp(data.Injury(mask), 'Yes'));
    injuryRate(i) = injured / total;
end

% Plot
figure;
bar(injuryRate, 'r');
set(gca, 'XTickLabel', surfaces);
title('Milk Crate Challenge: Injury Rate by Surface');
xtickangle(45);
grid on;
