function redMarker() {
    let x = document.getElementsByClassName("info_album");
    let i;
    for (i = 0; i < x.length; i++) {
        x[i].style.color = "red";
    }
}

function greenMarker() {
    let x = document.getElementsByClassName("info_album");
    let i;
    for (i = 0; i < x.length; i++) {
        x[i].style.color = "green";
    }
}

function darkMarker() {
    let x = document.getElementsByClassName("info_album");
    let i;
    for (i = 0; i < x.length; i++) {
        x[i].style.color = "gray";
    }
}

function Marker() {
    let x = document.getElementsByClassName("info_album");
    let i;
    for (i = 0; i < x.length; i++) {
        x[i].style.color = "black";
        x.getElementsByClassName('btn-success').addEventListener('click', greenMarker());
        x.getElementsByClassName('btn-danger').addEventListener('click', redMarker());
        x.getElementsByClassName('btn-dark').addEventListener('click', darkMarker());
    }
}

function Liked() {
    var like = document.getElementById('LikedIcon').classList.toggle('show')
}

