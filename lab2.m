s = tf('s');
P = 24.37/(s*(15.02*s + 1));
%%
figure;
rlocus(P);

figure;
step(P/(1+P))
%%
sisotool(P)

%%
G = 4.265446*(s+0.387)/(s+11.8);

L = G*P;

figure;
step(L/(1+L));

figure;
step(1/(1+L));
