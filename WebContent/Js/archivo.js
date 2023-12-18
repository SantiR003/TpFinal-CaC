function calcularPrecio() {
    let cantidad = parseInt(document.getElementById("cantidad").value);
    let categoria = parseInt(document.getElementById("categoria").value);
    let totalPaga = document.getElementById("totalPaga");
    let precio;

    if (categoria == 1) {
        precio = (200-(200*0.8))*cantidad;
        
    } else if (categoria == 2) {
        precio = (200-(200*0.5))*cantidad;
    } else {
        precio = (200-(200*0.15))*cantidad;
    }

    totalPaga.innerHTML = "Total a pagar: $" + precio;
}


function borrar(){
    document.getElementById("nombre").value = "";
    document.getElementById("apellido").value = "";
    document.getElementById("correo").value = "";
    document.getElementById("cantidad").value = "";
    document.getElementById("categoria").value = "1";
    document.getElementById("totalPaga").innerHTML ="Total a pagar: $" ;
}




document.addEventListener("DOMContentLoaded", function() {
    const button = document.getElementById("resumen");
    button.addEventListener("click", calcularPrecio);
});

document.addEventListener("DOMContentLoaded",function(){
    const button=document.getElementById("borrar");
    button.addEventListener("click", borrar);
 })