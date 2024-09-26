
A = [1, 1, 1;
     2, 2.0001, 2;
     3, 3, 3.0001];
b = [3; 6; 9];

det_A = det(A);
fprintf('Determinante de A: %f\n', det_A);

x = A \ b;
fprintf('Solución del sistema original:\n');
disp(x);

cond_A = cond(A);
fprintf('Número de condición de A: %f\n', cond_A);


b_mod = [3; 6.0001; 9];
x_mod = A \ b_mod;
fprintf('Solución del sistema con un pequeño cambio en b:\n');
disp(x_mod);


figure;
hold on;
plot(x, 'bo-', 'DisplayName', 'Solución original');
plot(x_mod, 'rx-', 'DisplayName', 'Solución con b modificado');
legend;
title('Comparación de soluciones');
xlabel('Índice');
ylabel('Valor de x');
hold off;

