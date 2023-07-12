const bar = document.getElementById("bar");
const nav = document.getElementById("navbar");
const close = document.getElementById("close");

if (bar) {
    bar.addEventListener('click', () => {
        navbar.classList.add("active");
    })
}

if (close) {
    close.addEventListener('click', () => {
        navbar.classList.remove("active");
    })
}

var counter = 1;
setInterval(function () {
    document.getElementById('radio' + counter).checked = true;
    counter++;
    if (counter > 4) {
        counter = 1;
    }
}, 5000);

// Modal 
const modal = document.querySelector('.js-modal');
const modalContainer = document.querySelector('.js-modal-container');
const modalClose = document.querySelector('.js-close');

function addOpen() {
    modal.classList.add('open');
}

function removeOpen() {
    modal.classList.remove('open');
}

function addClose() {
    modal.classList.add('close');
}

modalClose.addEventListener('click', removeOpen);
modal.addEventListener('click', removeOpen);

modalContainer.addEventListener('click', function (event) {
    event.stopPropagation();
});