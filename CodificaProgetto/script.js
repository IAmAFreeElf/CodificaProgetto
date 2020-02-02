//Variabili globali

var nodoArea1;
var nodoArea2;
var nodoArea3;
var tab1;
var tab2;
var tab3;

//Funzione gestoreLoad

function gestoreLoad() {
    try {
        nodoArea1 = document.getElementById("area1");
        nodoArea2 = document.getElementById("area2");
        nodoArea3 = document.getElementById("area3");
        tab1 = document.getElementById("tabella1");
        tab2 = document.getElementById("tabella2");
        tab3 = document.getElementById("tabella3");
        
        nodoArea1.onmouseenter = gestoreClickAreaTab1a;
        nodoArea1.onclick = gestoreClickAreaTab2a;
        nodoArea2.onmouseenter = gestoreClickAreaTab1b;
        nodoArea2.onclick = gestoreClickAreaTab2b;
        nodoArea3.onmouseenter = gestoreClickAreaTab1c;
        nodoArea3.onclick = gestoreClickAreaTab2c;
        
        tab1.style.display = "none";
        tab2.style.display = "none";
        tab3.style.display = "none";
        
        
    }
    catch (e) {
        alert("gestoreLoad " + e);
    }
}
window.onload = gestoreLoad;

//Funzioni gestoreClickAreaTab1

function gestoreClickAreaTab1a() {
    try {
        tab1.style.display = "table";
    }
    catch (e) {
        alert("gestoreClick" + e);
    }
}

function gestoreClickAreaTab1b() {
    try {
        tab2.style.display = "table";
    }
    catch (e) {
        alert("gestoreClick" + e);
    }
}

function gestoreClickAreaTab1c() {
    try {
        tab3.style.display = "block";
    }
    catch (e) {
        alert("gestoreClick" + e);
    }
}

//Funzioni gestoreClickAreaTab2

function gestoreClickAreaTab2a() {
    try {
        tab1.style.display = "none";
    }
    catch (e) {
        alert("gestoreClick" + e);
    }
}

function gestoreClickAreaTab2b() {
    try {
        tab2.style.display = "none";
    }
    catch (e) {
        alert("gestoreClick" + e);
    }
}

function gestoreClickAreaTab2c() {
    try {
        tab3.style.display = "none";
    }
    catch (e) {
        alert("gestoreClick" + e);
    }
}

