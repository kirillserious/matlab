%%  ��������� ������ �������� S_n - S, ��� S_n -- n-�� ��������� ����� ����

% �������� ���������
S = exp(1);

% ����� �������� n, �� �������� �� ����� ������� ������
finish_n = 10;

% C������� ������ S_n = [\sum(1/0!), ... , \sum(1/finish_n!)]
S_n = 0:finish_n;
S_n = 1 ./ factorial(S_n);
S_n = cumsum(S_n);

% �������� ������ ��������
plot(0:finish_n, S-S_n);


%% ��������� ������ ���� ��������

hold on;

% ������ �����������, ����� - � �������
psi = @(n) 1 ./ n;

% ������ ������ ������
plot(0:finish_n, psi(0:finish_n))

hold off

%% ������� � ��������

title("�������� � �����������");
xlabel("n");
legend("S - S_n", "\psi(n)")