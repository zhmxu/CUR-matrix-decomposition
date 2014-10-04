
A = in.A;
k = in.k;
[U,S,V] = svds(A,k);
fro_A_A_k = norm(A-U*S*V','fro');
spec_A_A_k = svds(A-U*S*V',1);

figure;
%sigma_k_plot
subplot(2,3,1);
title('sigma_k');
hold on;
plot(p_values,out.subspace_expected.sigma_k./S(k,k),'b');
legend('subspace-expected');
xlabel('number of p');
xlim([p_values(1),p_values(end)]);

%froerr-plot
subplot(2,3,2);
title('froerr');
hold on;
plot(p_values,out.subspace_expected.froerr./fro_A_A_k,'b');
legend('subspace_expected');
xlabel('number of p');
xlim([p_values(1),p_values(end)]);

%froerr_k
subplot(2,3,3);
title('froerr-k');
hold on;
plot(p_values,out.subspace_expected.froerr_k./fro_A_A_k,'b');
legend('subspace-expected');
xlabel('number of p');
xlim([p_values(1),p_values(end)]);

%specerr
subplot(2,3,4);
title('specerr');
hold on;
plot(p_values,out.subspace_expected.specerr./spec_A_A_k,'b');
legend('subspace-expected');
xlabel('number of p');
xlim([p_values(1),p_values(end)]);

%speccerr_k
subplot(2,3,5);
title('specerr-k');
hold on;
plot(p_values,out.subspace_expected.specerr_k./spec_A_A_k,'b');
legend('subspace-expected');
xlabel('number of p');
xlim([p_values(1),p_values(end)]);