resolve(S) :-
    S = marciais(_, _, _, _, _),
    % A moça de 20 anos está ao lado da lutadora de 25 anos.
    ao_lado(A1, A2, S),
    idade(A1, 20),
    idade(A2, 25),
    % A lutadora de Recife está em algum lugar à direita da lutadora de presilha Vermelha.
    em_algum_lugar_a_direita(A3, A4, S),
    estado(A3, pernambuco),
    presilha(A4, vermelha),
    % Maria está em algum lugar entre a mulher do Espírito Santo e a mulher de presilha Vermelha, nessa ordem.
    em_algum_lugar_entre(A5, A6, A7, S),
    nome(A5, maria),
    estado(A6, espirito_santo),
    presilha(A7, vermelha),
    % A Paranaense está em algum lugar entre a lutadora de 35 anos e a lutadora que pratica Jiu-jítsu, nessa ordem.
    em_algum_lugar_entre(A8, A9, A10, S),
    estado(A8, parana),
    idade(A9, 35),
    luta(A10, jiu_jitsu),
    % A mulher de 30 anos está ao lado da mulher mais nova.
    ao_lado(B1, B2, S),
    idade(B1, 30),
    idade(B2, 20),
    % Quem gosta de Cozinhar está usando uma presilha Branca.
    mulher(B3, S),
    hobby(B3, cozinhar),
    presilha(B3, branca),
    % A mulher de 30 anos está usando uma presilha Verde.
    mulher(B4, S),
    idade(B4, 30),
    presilha(B4, verde),
    % A lutadora de Goiás está em algum lugar entre as lutadoras da região Sudeste e Norte, nessa ordem.
    em_algum_lugar_entre(B5, B6, B7, S),
    estado(B5, goias),
    estado(B6, espirito_santo),
    estado(B7, tocantins),
    % Sônia está exatamente à esquerda da lutadora de presilha Amarela.
    exatamente_a_esquerda(B8, B9, S),
    nome(B8, sonia),
    presilha(B9, amarela),
    % A Judoca está em algum lugar à direita da mulher de presilha Verde.
    em_algum_lugar_a_direita(B10, C1, S),
    luta(B10, judo),
    presilha(C1, verde),
    % A mulher que luta Jiu-jítsu tem 30 anos.
    mulher(C2, S),
    luta(C2, jiu_jitsu),
    idade(C2, 30),
    % A lutadora da região Sul está ao lado da lutadora que gosta de Ler.
    ao_lado(C3, C4, S),
    estado(C3, parana),
    hobby(C4, ler),
    % Graziela está ao lado de quem gosta de Dançar.
    ao_lado(C5, C6, S),
    nome(C5, graziela),
    hobby(C6, dancar),
    % Quem gosta de Pintar está em uma das pontas.
    uma_das_pontas(C7, S),
    hobby(C7, pintar),
    % A mulher que gosta de Dançar está ao lado da mulher que joga Capoeira.
    ao_lado(C8, C9, S),
    hobby(C8, dancar),
    luta(C9, capoeira),
    % A moça de 20 anos está em algum lugar à direita da lutadora de presilha Verde.
    em_algum_lugar_a_direita(C10, D1, S),
    idade(C10, 20),
    presilha(D1, verde),
    % A lutadora da presilha Vermelha está em algum lugar à esquerda de quem pratica a luta que surgiu no Sudeste asiático.
    em_algum_lugar_a_esquerda(D2, D3, S),
    presilha(D2, vermelha),
    luta(D3, muay_thai),
    % Quem gosta de Cozinhar está exatamente à esquerda de quem gosta de Ler.
    exatamente_a_esquerda(D4, D5, S),
    hobby(D4, cozinhar),
    hobby(D5, ler),
    % A lutadora da região Centro-oeste está exatamente à esquerda da lutadora Tocantinense.
    exatamente_a_esquerda(D6, D7, S),
    estado(D6, goias),
    estado(D7, tocantins),
    % A mulher de presilha Branca está em algum lugar entre a Capixaba e a Andressa, nessa ordem.
    em_algum_lugar_entre(D8, D9, D10, S),
    presilha(D8, branca),
    estado(D9, espirito_santo),
    nome(D10, andressa),
    % fechamento
    mulher(E1, S),
    presilha(E1, azul),
    mulher(E2, S),
    nome(E2, tamires),
    mulher(E3, S),
    luta(E3, carate),
    mulher(E4, S),
    idade(E4, 40),
    mulher(E5, S),
    hobby(E5, cantar).

presilha(lutadora(P, _, _, _, _, _), P).
nome(lutadora(_, N, _, _, _, _), N).
luta(lutadora(_, _, L, _, _, _), L).
idade(lutadora(_, _, _, I, _, _), I).
estado(lutadora(_, _, _, _, E, _), E).
hobby(lutadora(_, _, _, _, _, H), H).

mulher(X, marciais(X, _, _, _, _)).
mulher(X, marciais(_, X, _, _, _)).
mulher(X, marciais(_, _, X, _, _)).
mulher(X, marciais(_, _, _, X, _)).
mulher(X, marciais(_, _, _, _, X)).

exatamente_a_esquerda(X, Y, marciais(_, _, _, X, Y)).
exatamente_a_esquerda(X, Y, marciais(_, _, X, Y, _)).
exatamente_a_esquerda(X, Y, marciais(_, X, Y, _, _)).
exatamente_a_esquerda(X, Y, marciais(X, Y, _, _, _)).

em_algum_lugar_entre(M, I, F, marciais(I, M, F, _, _)).
em_algum_lugar_entre(M, I, F, marciais(I, M, _, F, _)).
em_algum_lugar_entre(M, I, F, marciais(I, M, _, _, F)).
em_algum_lugar_entre(M, I, F, marciais(I, _, M, F, _)).
em_algum_lugar_entre(M, I, F, marciais(I, _, M, _, F)).
em_algum_lugar_entre(M, I, F, marciais(I, _, _, M, F)).
em_algum_lugar_entre(M, I, F, marciais(_, I, M, F, _)).
em_algum_lugar_entre(M, I, F, marciais(_, I, M, _, F)).
em_algum_lugar_entre(M, I, F, marciais(_, I, _, M, F)).
em_algum_lugar_entre(M, I, F, marciais(_, _, I, M, F)).

em_algum_lugar_a_esquerda(X, Y, marciais(X, Y, _, _, _)).
em_algum_lugar_a_esquerda(X, Y, marciais(X, _, Y, _, _)).
em_algum_lugar_a_esquerda(X, Y, marciais(X, _, _, Y, _)).
em_algum_lugar_a_esquerda(X, Y, marciais(X, _, _, _, Y)).
em_algum_lugar_a_esquerda(X, Y, marciais(_, X, Y, _, _)).
em_algum_lugar_a_esquerda(X, Y, marciais(_, X, _, Y, _)).
em_algum_lugar_a_esquerda(X, Y, marciais(_, X, _, _, Y)).
em_algum_lugar_a_esquerda(X, Y, marciais(_, _, X, Y, _)).
em_algum_lugar_a_esquerda(X, Y, marciais(_, _, X, _, Y)).
em_algum_lugar_a_esquerda(X, Y, marciais(_, _, _, X, Y)).

em_algum_lugar_a_direita(X, Y, S) :-
    em_algum_lugar_a_esquerda(Y, X, S).

ao_lado(X, Y, S) :-
    exatamente_a_esquerda(X, Y, S);
    exatamente_a_esquerda(Y, X, S).

uma_das_pontas(X, marciais(X, _, _, _, _)).
uma_das_pontas(X, marciais(_, _, _, _, X)).