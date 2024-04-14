% Access the signals from out.logsout
nu = out.logsout.get('nu').Values.Data;
t_nu = out.logsout.get('nu').Values.Time;

eta = out.logsout.get('eta').Values.Data;
t_eta = out.logsout.get('eta').Values.Time;

F1 = out.logsout.get('F1').Values.Data;
F2 = out.logsout.get('F2').Values.Data;
t_F1 = out.logsout.get('F1').Values.Time;
t_F2 = out.logsout.get('F2').Values.Time;

% Create the first figure
figure;

% Subplot for u, v, r
subplot(2, 1, 1);
plot(t_nu, nu(:,1), 'LineWidth', 2);
hold on;
plot(t_nu, nu(:,2), 'LineWidth', 2);
plot(t_nu, nu(:,3), 'LineWidth', 2);
hold off;
title('Signals u, v, and r');
xlabel('Time (s)');
ylabel('Amplitude (m/s or rad/s)');
legend({'u', 'v', 'r'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Subplot for F1 and F2
subplot(2, 1, 2);
plot(t_F1, F1, 'LineWidth', 2);
hold on;
plot(t_F2, F2, 'LineWidth', 2);
hold off;
title('Control signals F1 and F2');
xlabel('Time (s)');
ylabel('Amplitude (N)');
legend({'F1', 'F2'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Create the second figure
figure;
% Plot for x, y
plot(eta(:,2), eta(:,1), 'LineWidth', 2);
hold off;
title('Position on x, y plane');
xlabel('y (m)');
ylabel('x (m)');
set(gca, 'FontSize', 12);
grid on;
% Set axes to be equal to ensure the plot is square
axis equal;
