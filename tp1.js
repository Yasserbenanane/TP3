function calcul_moyenne(){
	var note1= prompt("donner une premiere note :");
	var note2= prompt("donner une deuxieme note :");
	var note3= prompt("donner une troisieme note :");

	var somme =Number(note1)+Number(note2)+Number(note3);
	
	document.write ("Voici la somme : " + somme + "<br>");
	var moyenne= somme/3;

	document.write("voici le moyenne : " + moyenne + "<br>")

	if(moyenne<10){
		document.write("vous etes redoublant");
		document.bgColor ="red";
	}
	else{
		document.write("vous etes admis");
		document.bgColor ="green";
	}
		document.write("<table border=2> <tr>");
		document.write("<td> voilà la somme" + somme +"</td>");
		document.write("<td> voilà la moyenne" + moyenne + "</td>");
		document.write("</tr> </table> ");
}
function test_age(){

var age= prompt("quelle est votre age ? :");
		if (age <18){
		document.write("Vous êtes mineur");
		document.body.style.background = "red";
		}
		else{
			document.write("Vous êtes majeur");
			document.body.style.background = "green";
		}
}
function simple_affichage(){
	var nom = prompt("quelle est votre nom ? :")
	var prenom = prompt("quelle est votre prénom ? :")

	document.write("<div style='margin: auto; width: 300px; border: 2px solid blue; '>");
	document.write("Bonjour " + prenom + " " + nom);
	document.write("</div>");
}
function test_couleur(){
	var couleur =prompt ("Choisir une couleur (bleu,vert,rouge)");

	if 
		(couleur ==="rouge" || couleur ==="ROUGE" || couleur ==="R"|| couleur ==="r")
		document.body.style.background = "red";
	else if
		(couleur ==="bleu" ||couleur ==="BLEU" ||couleur ==="B" ||couleur ==="b")
		document.body.style.background = "blue"
	else if 
		(couleur ==="vert"|| couleur ==="VERT" || couleur ==="V" || couleur ==="v")
		document.body.style.background = "green"
	else
		document.write("valeur non comprise")
}
function somme(){
    var a = document.getElementById("T1").value;
    var b = document.getElementById("T2").value; 
    var c = Number(a) + Number(b);
    T3.value = c;
}
function multiplication(){
    var a = document.getElementById("T1").value;
    var b = document.getElementById("T2").value; 
    var c = Number(a) * Number(b);
    T3.value = c;
}
function soustraction(){
    var a = document.getElementById("T1").value;
    var b = document.getElementById("T2").value; 
    var c = Number(a) - Number(b);
    T3.value = c;
}
function division(){

    var a = document.getElementById("T1").value;
    var b = document.getElementById("T2").value; 
    var c = Number(a) / Number(b);
    T3.value = c;
}
function parite(){
	var v=Number(document.getElementById("T1").value);
	if (v%2==0)

	alert("Paire")

	else
	alert("Impair")
}
function permuter(){

    var V3 = "";
    a = document.getElementById("T1").value;
    b = document.getElementById("T2").value;
    V3=a;
    a=b;
    b=V3;

    T1.value = a;
    T2.value = b;
}