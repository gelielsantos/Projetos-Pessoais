// Lista de Produtos vindos do Banco de Dados (simulação)
const listaProdutos =[
    produto = {
        id_produto: 1,
        nome_produto:"Cadeira Gamer",
        descricao_produto: "Cadeira Gamer tradicional, perfeita para os melhores games!!!",
        valor_produto: 529.90,
        foto_produto: "image/cadeira.jpg"
    },

    produto = {
        id_produto: 2,
        nome_produto:"Celular Xiaomi",
        descricao_produto: "Celular ultra moderno, para você jogar seus melhores games!!!",
        valor_produto: 1169.10,
        foto_produto: "image/celular.jpg"
    },

    produto = {
        id_produto: 3,
        nome_produto: "Processador Razer",
        descricao_produto: "Dependendo, serve até para fritar um ovo básico.",
        valor_produto: 1839.90,
        foto_produto: "image/Processador.jpg"
    },

    produto = {
        id_produto: 4,
        nome_produto: "Xbox Series S",
        descricao_produto: "Lágrima de Sonysta não inclusa!!!",
        valor_produto: 2659.90,
        foto_produto: "image/xbox.jpg"
    },
];

// const blocoProdutos = document.getElementById('bloco-produtos');
const blocoProdutos = document.querySelector('#bloco-produtos');

let rowProduto;
let colProduto;
let cont = 0; //Conta até 4

if (listaProdutos.length > 0) {
    for(let i=0; i<listaProdutos.length || cont < 4; i++) {
        if (i== 0 || cont == 0){
            rowProduto = criarDivLinha ();
            colProduto = criarDivProduto(i);
            rowProduto.appendChild(colProduto);
            blocoProdutos.appendChild(rowProduto);
        }

        else{
            colProduto = criarDivProduto(i);
            rowProduto.appendChild(colProduto);
        }
        cont++;
        if(cont == 4 && listaProdutos[i+1] !=null){
            cont = 0;
        }
    }
}
else {
    blocoProdutos.innerHTML = "Não há produtos cadastrados";
}

function criarDivLinha(){

    const rowProduto = document.createElement ('div');
    rowProduto.classList.add('row');
    return rowProduto;
}

function criarDivProduto (i) {
    const colProduto = document.createElement('div');
    colProduto.classList.add('col-sm');

    if (listaProdutos[i] == null){
        return colProduto;
    }

    const divProduto = document.createElement('div');
    divProduto.classList.add('card');
    divProduto.setAttribute('onmouseover','mudarCorBtn(btnComprar'+ (i+1)+')');
    divProduto.setAttribute('onmouseout','voltarCorBtn(btnComprar'+ (i+1)+')');

    const divFotoProduto = document.createElement('div');
    divFotoProduto.classList.add('foto'); 
    divProduto.appendChild(divFotoProduto);

    const tagImg = document.createElement('img');
    tagImg.classList.add('card-img-top');
    tagImg.setAttribute('src',listaProdutos[i].foto_produto);
    tagImg.setAttribute('alt',listaProdutos[i].nome_produto);
    divFotoProduto.appendChild(tagImg);

    const divNomeProduto = document.createElement('div');
    divNomeProduto.classList.add('card-title');
    divNomeProduto.innerHTML = listaProdutos[i].nome_produto;
    divProduto.appendChild(divNomeProduto);

    const divDescricaoProduto = document.createElement('div');
    divDescricaoProduto.classList.add('card-text');
    divDescricaoProduto.innerHTML = listaProdutos[i].descricao_produto;
    divProduto.appendChild(divDescricaoProduto);

    const divValorProduto = document.createElement('div');
    divValorProduto.classList.add('preco-produto');

    let valorAjustado = ajustarCasasDecimais(listaProdutos[i].valor_produto);
    divValorProduto.innerHTML = "R$ " + valorAjustado;

    divProduto.appendChild(divValorProduto);

    const divBtnComprar = document.createElement('div');
    divBtnComprar.classList.add('btn');
    divBtnComprar.classList.add('btn-outline-light');
    divBtnComprar.setAttribute('id', 'btnComprar' + (i +1));
    divBtnComprar.innerHTML = "$ Comprar $";
    divProduto.appendChild(divBtnComprar);

    colProduto.appendChild(divProduto);
    return colProduto;
}

function ajustarCasasDecimais(valor) {
    let valorAjustado = valor.toFixed(2);
    valorAjustado = valorAjustado.replace('.', ',');
    return valorAjustado;
}

function mudarCorBtn(btnComprar){
    btnComprar.classList.replace('btn-outline-light','btn-warning');
}
function voltarCorBtn(btnComprar){
    btnComprar.classList.replace('btn-warning','btn-outline-light');
}