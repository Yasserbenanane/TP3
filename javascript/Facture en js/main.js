//Date

const dateInput = document.getElementById('date')

let day = new Date().getDate()
if (day< 10){
    day = "0" + day
} 

let month = new Date().getMonth() + 1
if (month< 10){
    month = "0" + month
} 

let year = new Date().getFullYear()

dateInput.value = `${day}/ ${month}/ ${year}`

//Boutton

const calcButton = document.getElementById('calc')
const addButton = document.getElementById('addRow')
const fillButton = document.getElementById('fillAuto')
const cancelButtom = document.getElementById('cancel')

//boutton Ajouter une ligne

addButton.addEventListener('click', addRow)

function addRow(){

    let table = document.querySelector('tbody')
    console.log(table);
    table.innerHTML += `<tr>    
    <td><input type="text"class="y"></td>
    <td><input type="text"class="a"></td>
    <td><input type="text"class="b"></td>
    <td><input type="text"class="c"></td>
</tr>`
    
}

//Remplir auto

let allDescription 
let allQuantity 
let allPrice 
let allTotal

fillButton.addEventListener('click', fillAuto)

function scraping(){
    allDescription = document.querySelectorAll('.y')
    allQuantity = document.querySelectorAll('.a')
    allPrice = document.querySelectorAll('.b')
    allTotal = document.querySelectorAll('.c')

    console.log(allDescription);
    console.log(allQuantity);
    console.log(allPrice);
    console.log(allTotal);
} 
function fillAuto(){
    scraping()
    let myVar= ['Ordinateur','Imprimante','souris','écran','clé USB','casque','carte graphique','processeur'];
    console.log(myVar[1]);
    
      // taille allQuantity[?] / allQuantity[?]
      for (let i = 0; i < allDescription.length; i++) {
        allDescription[i].value = myVar[Math.floor(Math.random() * myVar.length) + 1]
                            //    myVar[1]
    }

    console.log(allQuantity); // -> <node list> <input> / <input> / <input> ...
    console.log(allQuantity.length); // -> 4

    for (let i = 0; i < allQuantity.length; i++){ 
        allQuantity[i].value = Math.floor(Math.random() * 2000) + 1
    }   

    console.log(allPrice.length);
    for (let i = 0; i < allPrice.length; i++){
        allPrice[i].value = Math.floor(Math.random() * 100) + 1
    }

}

calcButton.addEventListener('click', somme)
let downTotal
let Solde
let sous
let TVA
let taxeSomme
let Expedito
let total
function somme(){
     downTotal=document.querySelector('.downTotal')
     Solde=document.querySelector('.Solde')
     sous=document.querySelector('.sous-remise')
     TVA=document.querySelector('.TVA')
     taxeSomme=document.querySelector('.taxeSomme')
     Expedito=document.querySelector('.Expedito')
     total=document.querySelector('#total')
    scraping()
    for (let i = 0; i < allTotal.length; i++){
        allTotal[i].value = allPrice[i].value * allQuantity[i].value // NODE LIST  
    }
    
    let soustotal2 = 0;

    for (let i = 0; i < allTotal.length; i++){
        soustotal2 += Number(allTotal[i].value);
    }

    downTotal.value = soustotal2; // SOUS-TOTAL
    
  sous.value = soustotal2 - soustotal2 * Number(Solde.value / 100); // SOUS-TOTAL MOINS LES REMISES
  taxeSomme.value = soustotal2 * Number(TVA.value / 100); // TAXE TOTALE
  total.value = // SOLDE DU
    Number(sous.value) + (Number(taxeSomme.value) + Number(Expedito.value));
}

cancelButtom.addEventListener('click', annuler)

function annuler(){
    location.reload()
    
}


