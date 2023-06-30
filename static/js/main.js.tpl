



/* TRASNFORMA SELECT EM DIVS */
document.addEventListener("DOMContentLoaded", function () {
  
  var x, i, j, l, ll, selElmnt, a, b, c;
  /*look for any elements with the class "custom-select":*/

  x = document.getElementsByClassName("select-radio");
  l = x.length;
  for (i = 0; i < l; i++) {
    selElmnt = x[i].getElementsByTagName("select")[0];
    ll = selElmnt.length;
    /*for each element, create a new DIV that will act as the selected item:*/
    a = document.createElement("DIV");
    a.setAttribute("class", "select-selected");
    a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
    x[i].appendChild(a);
    /*for each element, create a new DIV that will contain the option list:*/
    b = document.createElement("DIV");
    b.setAttribute("class", "select-items select-hide");
    for (j = 1; j < ll; j++) {
      /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
      c = document.createElement("DIV");
      c.innerHTML = selElmnt.options[j].innerHTML;
      c.addEventListener("click", function (e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
      });
      b.appendChild(c);
    }
    x[i].appendChild(b);
  }

  $(".btn-quant").click(function (e) {
    $(".btn-quant").removeClass("same-as-selected");
    var texto = $(this).text();
    $(".js-quantity-input").val(texto);
    $(this).addClass("same-as-selected");
  });

  $(".select-items div").click(function () {
    var texto = $(this).text();
    $(".escolha-tamanho").removeClass("escolhido");
    $(this)
      .parent()
      .parent()
      .parent()
      .parent()
      .find(".escolha-tamanho")
      .val(texto)
      .addClass("escolhido");
  });


  $(".nav-list-accordion .list-subitems div.nav-item-container").prepend(
    "<span>>"
  );
  $(".nav-list-accordion .list-subitems div.nav-item-container>span").click(
    function () {
      if ($(this).parent().next(".list-subitems").is(":visible")) {
        $(this).parent().next(".list-subitems").slideUp(400);
      } else {
        $(".nav-list-accordion ul .list-subitems").slideUp(400);
        $(this).parent().next(".list-subitems").slideToggle(400);
      }
    }
  );

  


  
});




$(".compartilhar p").click(function () {
  $(".compartilhar .social-share").slideToggle();
});
var tamanhoViewport = $(window).width();
if (tamanhoViewport < 769) {
  var swiper555 = new Swiper(".js-artigos", {
    slidesPerView: 1,
    spaceBetween: 0,
    navigation: {
      nextEl: ".js-swiper-artigos-next",
      prevEl: ".js-swiper-artigos-prev",
    },
  });
} else {
}
$(function () {
  let estoque = $("[property='nuvemshop:stock']").attr("content");
  if (estoque > 0) {
    $("#estoque-produto span").text(estoque);
  } else {
    $("#estoque-produto span").css("display", "none");
  }
});

setInterval(() => {
  let valor_carrinho = $(".js-cart-total").html();
  $(".valor-carrinho").text(valor_carrinho);
}, 3000);


// ANDERSEN

// Filters Category
function activeButtonsFilters () {
  document.querySelectorAll('.abre-fecha').forEach(element => {
    element.addEventListener('click', ()=> {
        element.classList.toggle('btn-filter-actived');
    })
  })
}

dataLayer[1]?.ecommerce.item_list_id == 'categories' ?  activeButtonsFilters () : null;

function addListenerOnButtonSize (){
  document.querySelectorAll('.content-variant-tamanho .select-items > div').forEach(element => {
    element.addEventListener('click', () => {
     element.parentElement.parentElement.parentElement.nextElementSibling.classList.remove('desativado');
     element.parentElement.parentElement.parentElement.nextElementSibling.value = 'Comprar';
    })
  });
}
function checkVariantTamanho () {
  document.querySelectorAll('.js-color-variants-container').forEach(element => element.remove())
  document.querySelectorAll('.content-variant-tamanho').forEach(element => {
    element.parentElement.nextElementSibling.classList.add('desativado');
    element.parentElement.nextElementSibling.value = 'Escolha o tamanho';
  })
  setTimeout(() => {
    addListenerOnButtonSize ();
  }, 1000);

  window.addEventListener('scroll', ()=> {
    addListenerOnButtonSize();
    document.querySelectorAll('.js-color-variants-container').forEach(element => element.remove())
  })
}
document.querySelector('.content-variant-tamanho') || document.querySelector('.js-color-variants-container') ? checkVariantTamanho () : null;