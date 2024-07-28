clc;
clear all;
close all;
A=imread('imag/im1.png');
P1=entropy(A);
P2=graycomatrix(A);
P3=entropy(P2);
BB = im2bw(A, 0.7);
P4=hu_moments(BB);
P5=entropy(P4);
%fprintf('Entropies \n  image : %.2f, matrice d occurrence : %.2f, moment de Hu %.2f \n', P1, P3, P5);
fprintf('Entropy H : %f\n', P1);
fprintf('Moment of Hu : ');
disp(P4);
fprintf('Co-occurrence matrix :\n ');
disp(P2);
PP=P1.*P4;
PP1=PP*P2;
fprintf('Initial vector :\n ');
disp(PP1);
% Vecteur d'entrée (des valeurs aléatoires pour l'exemple)
%V(1) = PP1;

b = 7;
n = 10;
iterations = 10; % Nombre d'itérations pour chaque valeur de a
interval_a = linspace(2.8, 4, 100); % Intervalle de valeurs pour a
vector_length = 8; % Longueur du vecteur Ai

% Initialisation du tableau pour stocker les résultats
A_values = zeros(length(interval_a), iterations, vector_length);

% Itération sur l'intervalle de valeurs pour a
for i = 1:length(interval_a)
    a = interval_a(i);
    A = zeros(iterations, vector_length);
    %%A(1, :) = randi(n + 1, 1, vector_length); % Valeurs initiales de A_0
    A(1, :) = PP1;
    % Calcul itératif de Ai en utilisant la formule récurrente
    for j = 2:iterations
        A(j, :) = mod(a * A(j - 1, :) + b, n + 1);
    end    
    % Stockage des valeurs de A pour chaque valeur de a
    A_values(i, :, :) = A;
end

% Affichage du vecteur transformé
fprintf('Chaotically transformed vector:\n ');
disp(A(iterations,:));





