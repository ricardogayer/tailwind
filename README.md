# TailwindCSS and AlpineJS

## Instalação

```sh
npm init -y
```

```sh
npm install -D tailwindcss autoprefixer postcss-cli
```

```sh
npx tailwindcss init -p
```

Criar um arquivo chamado **tailwind.css** com o conteúdo abaixo:

```sh
touch tailwind.css
```

```js
@tailwind base;
@tailwind utilities;
@tailwind components;
```

Instale no VS Code a extensão "PostCSS Language Support".
Esta extensão irá compreender a sintaxe @tailwind corretamente.

Substituir o conteúdo do arquivo **tailwind.config.js** pelo conteúdo abaixo:

```js
module.exports = {
  content: [
    "./layouts/**/*.{html,js,jsx,md,mdx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

Crie um arquivo HTML para testar a configuração e faça o link com o styles.css gerado

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>TailwindCSS & AlpineJS</title>

</head>
<body>
    <h1 class="text-indigo-800"> TailwindCSS & AlpineJS</h1>
</body>
</html> 
```

Executar em uma outra janela o comando para compilação em tempo real (JIT)

```sh
npx tailwindcss -i tailwind.css -o ./layouts/styles.css --watch
```
