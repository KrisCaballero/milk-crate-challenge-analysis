%% milk_crate_vector_field
%  Visualizing failures represented by vector field from the Milk Crate Challenge.
%
%  Included is a spreadsheet (milkcrate.csv) featuring manually-collected datasets
%  this script requires and loads, uniquely generating a vector field:  showing
%  participants' changes in failures by changes in height relative to the
%  crate column where participant's failed. The vectors are represented as follows:
%
%        - x-coordinate: Column of failure
%        - y-coordinate: Peak height reached
%        - v-component : Change in height--peak of failure (dH_failure)
%
%  This kind of visualization sports a directional property mathematically per
%  failure of the challenge's attempts. Doing this shows the height were participants
%  fall most often, in contrast to the lowest positions on the stack, defying the
%  structure's instability.
%
%  INPUT: milkcrate.csv
%         This CSV contains "ColumnOfFailure" column: integer values where the failure
%         happened; the "PeakHeight" column which is the highest part of the stack;
%         and "dH_failure" with regards to the change in height where the participant
%         failed.
%
%
%
%  OUTPUT: A bar graph displaying injury rates by surface type.
%          This figure contains:
%          - Vector field title
%          - "Column of Failure" label on the X-axis
%          - "Peak Height" on the Y-axis
%
%
%
%  USAGE: Run the script in MATLAB
%         >>> milk_crate_vector_field
%
%         Double check that file milkcrate.csv is in the same directory, or
%         in MATLAB's active project folder.
%
%
%
%  NOTES:
%       - NaN values in rows from the spreadsheet have been removed.
%       - All data in milkcrate.csv were tallied manually from available videos online,
%         part of the author's independent research.
%       - This is one of several scripts part of a larger analysis visualizing and
%         examining statistical patterns in the Milk Crate Challenge.
%
%
%
%  Author: Kris Caballero
%  Date: June 22, 2026 @ 11:28pm PST
%  Version: 1.0
%  MATLAB Compatibility: R2024b or later

clc; clear;

% Load dataset
data = readtable('milkcrate.csv');

% Filter the rows
mask = ~isnan(data.ColumnOfFailure) & ~isnan(data.dH_failure) & ~isnan(data.PeakHeight);

x = data.ColumnOfFailure(mask);
y = data.PeakHeight(mask);

u = zeros(size(x)); % x component
v = data.dH_failure(mask); % y component

% Plot
figure;
quiver(x, y, u, v, 'LineWidth', 3, 'Color', 'r', 'MaxHeadSize', 3);
title('Milk Crate Challenge: Failure Rates vector field');
xlabel('Column of Failure');
ylabel('Peak Height');
axis equal;
grid on;
