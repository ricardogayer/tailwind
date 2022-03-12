# TailwindCSS - Flex & Grid

## Flex

flex é utilizando para alinhamento linear (apenas uma direção / dimensão )
grid é utilizado para alinhamento colunas

### flex-row / flex-col

flex pode ser:
flex-row (linha) e flex-col (coluna), apenas 1 coluna ou 1 linha!

### flex-wrap / flex-nowrap

flex-wrap não havendo espaço para o texto, os itens são empinhados como "block"

flex-nowrap os itens "crescem" quando necessário para o correto alinhamento em apenas uma linha.
A largura (fle-row) de cada item depende do tamanho do conteúdo interno.

### justify-*

utilizado para alinhamento no eixo principal (main axis)
flex-row -> horizontal
flex-col -> vertical

justify-start -> alinha os itens no início do eixo principal
justify-end -> alina os itens no fim do eixo principal
justify-between -> coloca o primeiro "colado" no início do eixo e o último no final, os elementos do meio são espaços iguais.
justify-around -> espaço das pontas 1/2 do espaço entre os elementos do meio.
justify-evenly -> espaço iguail nas pontas e entre os elementos.

### items-*

items-* -> Para alinhamento no eixo perpendicular ao eixo principal

items-stretch -> A altura (flex-row) dos elementos se ajustam com o maior elemento. Sem um alinhamento definido.

items-start -> alinhamento no top
items-end -> alinhamento na parte de baixo
items-baseline -> Alinhamento pela base da fonte (pelo texto)
items-center -> alinhamento pelo centro dos elementos

### content-*

Somente com flex-wrap podemos utilizar content-* para alinhamento dos elementos internos.

### self-*

self-* alinhamento de um item individual no eixo oposto ao principal.

### flex-grow

flex-grow é utilizado para dimensionamento dos elementos em relação aos outros.

flex-grow-0 -> Mantem o tamanho original (default)
flex-grow -> Aumenta o tamanho do elemento

### flex-shrink

flex-shrink -> reduz o tamanho do elemento para ocupar apenas o espaço necessário.

flex-shrink-0 -> Aplica o shrink no elemento (ajustando o tamanho e não permitindo quebra de texto, por exemplo)
flex-shrink -> (default)

### flex-(short-hand) - flex-basis

flex: grow - shrink - %

flex-1 -> Se for utilizado por todos os elementos, todos ficarão com o mesmo tamanho
flex-auto
flex-initial
flex-none

### order

order -> utilizado para ordernar os elementos. Esta propriedade é muito utiliza na responsividade onde a mudança da ordem pode ser interessante!

### space-x-*& space-y-*

space-* -> utilizando para adicionar espaço entre os elementos do flex box. Não existe no CSS3, apenas no Tailwind CSS

## Grid com Tailwind

O grid é utilizado para alinhar objetos em duas dimensões.

### grid-cols-*

Quantidade de colunas do grid

### justify-items-*

Alinhamento no eixo X (para grid-cols-*)

start -> alinhamento a esquerda
end -> alinhamento a direita
center -> ainhamento centralizado
stretch -> ocupa do o espaço (default), se os itens não definirem os tamanhos

### items-* p/ grid

Alinhamento no eixo Y (para grid-cols-*)

start -> alinhamento no top
end -> alinhamento na base
center -> alinhamento centralizado
baseline -> alinhamento pelo texto
stretch -> ocupa todo o espaço (default), quando não tem definição individual do elemento (célula)

### justify-* p/ grid

Para utilizar justify-* semelhante ao flex é necessário criar uma customização:

```js
@tailwind base;
@tailwind utilities;
@tailwind components;

@layer components {
    .grid-custom {
        grid-template-columns: repeat(3, minmax(0px, max-content));
    }
}
```

justify-start -> alinhamento a esquerda
justify-end -> alinhamento a direira
justify-center -> alinhamento centralizado
justify-between -> alinhamento semelhante ao flex
justify-start -> alinhamento a esquerda
justify-around -> alinhamento metade do espaço para as laterais
justify-evenly -> espaço no eixo x iguais entre eles

### content-* p/ grid

Equivalente ao justify-*, porém para o eixo Y.

### place-content-*

### place-items-*

### justify-selft-*

### self-* p/ grid

### place-selft-*
