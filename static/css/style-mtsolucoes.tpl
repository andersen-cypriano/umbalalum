/* Estilo Mt Solucoes */

::-webkit-scrollbar { width: 7px; background: var(--cor_verde_1);}
body::-webkit-scrollbar-track { background: var(--cor_verde_1)  !important;}
body::-webkit-scrollbar-thumb:window-inactive{background:var(--cor_chumbo) !important;}
body::-webkit-scrollbar-thumb {background-color: var(--cor_chumbo) !important;border-radius: 0px ;}
div::-webkit-scrollbar-track { background: var(--cor_verde_1) !important;}
div::-webkit-scrollbar-thumb:window-inactive{background:var(--cor_chumbo) !important;}
div::-webkit-scrollbar-thumb {background-color: var(--cor_chumbo) !important;border-radius: 0px ;}
::-webkit-scrollbar-track { background-color: var(--cor_verde_1);}
:-webkit-scrollbar-thumb:hover {background: var(--cor_verde_1) !important;}


@mixin sombra {
  text-shadow: 0px 3px 6px rgba(0, 0, 0, 0.29);
}
@mixin sombra_box {
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.29) !important;
}

:root {
    --cor_azul_1: #C5D3E3 !important;
    --cor_verde_1: #ABD19D !important;
    --cor_verde_2: #D1E6C9 !important;
    --cor_creme: #F8E8A9 !important;
    --cor_vinho: #A44F73 !important;
    --cor_cinza: #393939 !important;
    --cor_chumbo: #59677B !important;
    --cor_rosa: #FE8686 !important;
    --sombra_1: 0px 2px 6px rgba(0,0,0,0.29);
    --sombra_2: 0px 3px 6px rgba(0,0,0,0.29);
    --sombra_3: 0px 6px 6px rgba(0,0,0,0.29);
    --font_1: 'Comic Neue', cursive !important;
    --font_2: 'Amatic SC', cursive !important;
    --font_3: 'Bad Script', cursive !important;
    --font_4: 'Sacramento', cursive !important;
}
body{
    font-family: var(--font_1);
}
.no-pad{
    padding-left:0 !important ;
    padding-right:0 !important ;
}
#store_bar_iframe{
    display: none !important;
}
.h1.text-primary{
    font-family: var(--font_2);
    color: var(--cor_cinza);
    font-size: 32px;
    text-transform: uppercase;
}

/*Topo*/

/*banner info*/
.section-topbar{
    background-color: var(--cor_creme);
    color: #000;
    .font-small{
        font-size: 16px;
    }
    a{
        color: #000;
    }
}
/*header*/
header{
    border-radius: 0px 0px 50px 50px;
    box-shadow: var(--sombra_2);
    #logo{
        .logo-img{
          max-height: 130px;
          margin-top: 0;
        }
    }
    .nav-desktop{
        border-top: 1px solid #00000029;
        .nav-desktop-list{
            margin-bottom: 10px;
        }
    }
    &.head-light {
    
        .nav-row{
            border: none;
        }
        .form-control{
            border-radius: 16px;
            height: 33px;
            border-color: var(--cor_chumbo);
            font-family: var(--font_1) !important;
            font-size: 16px;
        }
        .search-container{
            ::-webkit-input-placeholder{opacity:1 !important;color: var(--cor_chumbo) !important; font-size: 16px;}
            .box-formulario ::-webkit-placeholder{opacity:1 !important;color: var(----cor_chumbo) !important;font-size: 16px}
            :-moz-placeholder{opacity:1 !important;color: var(----cor_chumbo) !important;font-size: 16px}
            ::-moz-placeholder {opacity:1 !important;color: var(----cor_chumbo) !important;font-size: 16px}
            :-ms-input-placeholder{opacity:1 !important;color: var(----cor_chumbo) !important;font-size: 16px}
        }
    
        .nav-desktop-list {
            .nav-dropdown{
                margin-right: 80px;
                margin-top: 5px;
                >.nav-item-container >.nav-list-link{
                    position: relative;
                    display: flex;
                    align-items: center;
                    height: 40px;
                    padding-left: 30px;
                    color: var(--cor_chumbo);
                    font-weight: 600;
                    &:before{
                        content: '';
                        background: url("{{ 'images/btn-menu.svg' | static_url }}") no-repeat center center / 15px;
                        height: 20px;
                        width: 20px;
                        position: absolute;
                        left: 0;
                        top: 10px;
                    }
                    .nav-list-arrow{
                        display: none;
                    }
                } 
            }
            .nav-list-link{
                color: var(--cor_chumbo);
                font-size: 18px;
                font-family: var(--font_1);
                font-weight: 400;
                margin-top: 5px;
            }
        }
        .utilities-container{
            display: flex;
            justify-content: flex-end;
            .utilities-item{
                width: 60px;
                margin-left: 20px;
                [viewBox="0 0 10.228 10.228"]{
                    margin-bottom: 7px;
                }
                .utility-name{
                    display: block;
                    color: var(--cor_verde_1);
                }
            }
            .atendimento-topo{
                display: none;
            }
            .cart-summary .utility-name.d-inline-block{
                position: absolute;
                left: 60px;
                color: var(--cor_cinza);
            }
        }
        .badge{
            background-color: var(--cor_creme);
            color: var(--cor_cinza);
            font-weight: 400;
            height: 19px;
            width: 19px;
            right: inherit;
            left: 30px;
            font-size: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    }
    &.compress{
        border-radius: 0px 0px 30px 30px;
        .container-fluid {
            max-width: 1300px
        }
        #logo,.js-search-container{
            display: none;
        }
        .utilities-container{
            position: absolute;
            width: 100%;
            z-index: 3;
            height: 55px;
            .utilities-item{
                padding: 5px;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                .utility-name{
                    display: none;
                }
            }
        }
        .nav-desktop{
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start;
            .nav-desktop-list {
                margin-bottom: 0px;
                height: 55px;

                >.nav-item-desktop{
                    display: none;
                }
                >.nav-item-desktop.js-item-subitems-desktop:first-child{
                    display: inline-block;
                    .nav-item-container .nav-list-link{
                        padding-left: 30px;
                        color: #fff;
                        font-size: 17px;
                    }
                    .nav-item-container .nav-list-link:before{
                        width: 40px;
                        height: 30px;
                        background-size: 25px;
                        top: 4px;
                        left: 0;
                    }
                }
                .nav-item-desktop.nav-dropdown> .nav-item-container> .nav-list-link:after{
                    content: 'Menu';
                    font-family: var(--font_1);
                    color: var(--cor_cinza);
                    font-size: 16px;
                    position: absolute;
                    left: 40px;
                }
            }
        }
    }
    
}
.nav-dropdown:hover .nav-dropdown-content{
    border-top: 15px solid #59677B;
    background-color: #fff;
    border-radius: 0px 0px 50px 50px;
    box-shadow: var(--sombra_2);
    top: calc(100% - 15px);
}

// .nav-list-accordion .list-subitems.nav-list-accordion >li:hover >ul,
// .nav-list-accordion .list-subitems.nav-list-accordion >li.active >ul{
//     display: flex;
// }
.nav-list-accordion .list-subitems.nav-list-accordion >li .nav-item-container >a{
    font-size: 18px !important;
}
.nav-list-accordion .list-subitems.nav-list-accordion >li:hover
.nav-list-accordion .list-subitems.nav-list-accordion >li{
    max-width: 49%;
    display: inline-flex;
}
.nav-list-accordion .list-subitems div.nav-item-container{
    position: relative;
    flex-direction: row;
    display: flex;
}
.nav-list-accordion .js-item-subitems-desktop .list-subitems div.nav-item-container span{
    position: absolute;
    right: 18px;
    top: 7px;
    height: 17px;
    width: 17px;
    line-height: 5px;
    background: url("{{ 'images/setinha-menu2.svg' | static_url }}") no-repeat center center / 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    
}
.nav-list-accordion .js-item-subitems-desktop:nth-child(odd) .list-subitems div.nav-item-container span{
    background: url("{{ 'images/setinha-menu.svg' | static_url }}") no-repeat center center / 100%;
    
}
.nav-list-accordion .js-item-subitems-desktop *{
    font-size: 17px !important;
}
.nav-list-accordion .js-item-subitems-desktop:nth-child(odd) *{
    color: #5C7B61 !important;
}
.nav-item-container a{
    font-weight: 600;
}
.nav-dropdown .js-desktop-dropdown > .desktop-list-subitems.list-subitems.nav-list-accordion{
    display: grid;
    grid-template-columns: 25% auto auto;

}
.nav-list-accordion .list-subitems div.nav-item-container{
    width: 100%;
    min-width: 195px;
}

.js-desktop-dropdown .desktop-list-subitems .js-item-subitems-desktop {
    position: relative;
    min-width: 160px;
}
.js-desktop-dropdown .desktop-list-subitems>.js-item-subitems-desktop{
    border-right: 1px solid #4D4D4D50;
}
.js-desktop-dropdown .desktop-list-subitems>.js-item-subitems-desktop:nth-child(3){
    border: none;
}
.desktop-list-subitems .list-subitems .nav-item{
    display: inline-flex;
    margin: 0;
    padding: 0 5px 0 0;
    -webkit-column-break-inside: avoid;
    break-inside: avoid;
    width: calc(48% - 20px);
    margin-right: 20px;
    position: relative;
}
.desktop-list-subitems .list-subitems .nav-item.active .nav-item:hover,
.desktop-list-subitems .list-subitems .nav-item.active{
    background-color: #D9D9D9;
    border-radius: 5px;
}
.nav-list-accordion .js-item-subitems-desktop:nth-child(odd) .list-subitems .nav-item .nav-item:hover,
.nav-list-accordion .js-item-subitems-desktop:nth-child(odd) .list-subitems .nav-item.active{
    background-color: #ABD19D;
}

.desktop-list-subitems .list-subitems .nav-item .list-subitems{
    min-width: 220px;
    display: inline-flex;
    flex-direction: column;
    flex-wrap: wrap;
    position: absolute;
}
.js-desktop-dropdown .desktop-list-subitems .list-subitems .item-with-subitems ul{
    display: none;
    background-color: #fff;
    left: calc(100% + 15px);
    top: 0px;
    z-index: 5;
}
.desktop-list-subitems .nav-item .list-subitems .nav-item .list-subitems .nav-list-link{
    border-left: none;
    margin-bottom: 7px;
}
.js-desktop-dropdown .desktop-list-subitems .list-subitems .item-with-subitems ul >li{
    width: 90%;
    border-bottom: 1px solid #4D4D4D50;
}
.js-desktop-dropdown .desktop-list-subitems .list-subitems .item-with-subitems ul >li:last-child{
    border: none;
}
.js-desktop-dropdown .desktop-list-subitems .list-subitems .item-with-subitems ul >li:hover{
    background-color: #7D7B79;
}


/*Slider topo Home*/
[data-store="slider-main"]{
    margin-top: -60px;
    padding-top: 90px;
    background: var(--cor_verde_2);
    position: relative;
    .section-slider{
        position: relative;
        height: auto;
        padding-bottom: 70px !important;
        
        &:before{
            content: '';
            width: 100%;
            height: 80px;
            position: absolute;
            bottom: 0;
            z-index: 1;
            background:#fff url("{{ 'images/slider-bottom.png' | static_url }}") no-repeat 50px bottom / 100%;
            
        }
    }
    .bee{
        position: absolute;
        z-index: 1;
        bottom: -65px;
    }
}
.swiper-pagination-bullet-active{
    background-color: var(--cor_verde_1) !important;
}


.item .item-actions{
    display: block;
    visibility: visible;
    opacity: 1;
}



/*Item grid*/

.item-product{
    box-shadow: var(--sombra_2);
    border-radius: 20px;
    padding-bottom: 20px;
    [data-store*='product-item-image-'] >a:before{
        content: 'ver mais';
        position: absolute;
        top: 14px;
        right: 10px;
        font-size: 16px;
        color: var(--cor_cinza);
        text-shadow: 0px 2px 8px #fff;
        text-decoration: underline;
        z-index: 2;
    }
    .js-item-name.tit-prod{
        font-size: 16px;
        color: #000;
        min-height: 40px;
    }
    .form-quantity{
        display: none !important;
    }
    .item-actions.mt-2{
        display: none !important;
    }
    #personaliza-load{
        display: none !important;
    }
    .js-product-quickshop-variants{
        justify-content: center;
        .box-quantidade{
            margin-top: 0px;
        }
        .form-select-icon{
            display: none;
        }
    }
    .select-radio {
        padding: 0;
        .select-selected{
            display: none;
        }
        .form-group{
            .form-select{
                height: 5px;
                overflow: hidden;
                opacity: 0;
                z-index: -2;
                position: absolute;
            }
            
        }
        
    }
    .select-items,.box-quant{
        display: inline-flex;
        flex-wrap: wrap;
        justify-content: center;
        .select-items{
            display: none;
        }
        >div{
            height: 25px;
            width: 27px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: var(--sombra_1);
            margin: 10px 5px;
            border: 1px solid var(--cor_creme);
            font-size: 12px;
        }
        >div.same-as-selected{
            background-color: var(--cor_creme);
        }
    }
    [for="variation_1"]{
        // opacity: 0;
        // position: absolute;
        // left: 0;
    }
    
    .escolha-tamanho{
        margin-bottom: -43px;
        position: relative;
        background-color: var(--cor_creme) !important;
        color: #000;
        text-transform: none;
        font-family: var(--font_1);
        letter-spacing: .5px;
    }
    .escolha-tamanho.escolhido{
        display: none;
    }
    .item-actions{
        margin-top: 20px;
    }
    .js-prod-submit-form{
        font-family: var(--font_1);
        text-transform: none;
    }
}
.btn-primary{
    font-family: var(--font_1) !important;
}
.item-price{
    color: #000;
    font-size: 16px;
    font-weight: 400;
}
.price-compare{
    color: #7D7B79;
    font-size: 14px;
    font-weight: 400;
}
.label.label-accent,
.label{
    color: #000;
    text-transform: none;
    border-radius: 15px;
    height: auto;
    width: auto;
    padding: 3px 15px;
    font-size: 16px !important;
    font-weight: 400;
    background-color: var(--cor_verde_1);
    
}
.label.js-stock-label.label-default,
.label.label-default{
    background-color: #F6BBE2;
    
}
.label.label-accent.wpn-label-discount{
    background-color: #F6BBE2;

}
.label.label-accent[data-store="product-item-offer-label"]{
    background-color: var(--cor_verde_1);

}

#single-product {
    #estoque-produto{
        padding: 0;
        line-height: 23px;
        margin-bottom: 10px;
        display: flex;
        align-items: center;
        justify-content: flex-end;
        color: #5C7B61;
        font-size: 15px;
        font-weight: 600;
        font-family: var(--font_1);
        
    }
    #product_form {
        .select-selected,
        .select-items,
        .box-quant{
            display: none;
        }
        .form-label .svg-icon-text {
            fill: #6a976a !important;
        }
        .box-quantidade{
            margin-top: 22px;
        }
        .box-quantidade { 
            display: flex;
            justify-content: flex-end;
        }
        .js-shipping-calculator-form .busca-cep{
            display: flex;
            flex-wrap: wrap;
        }
        .js-shipping-calculator-form{
            .form-control-container{
                box-shadow: var(--sombra_2);
                padding: 0px;
                max-width: 222px;
            }
        }
        
        .js-shipping-zipcode-help{
            text-align: right;
            color: var(--cor_cinza);
            text-decoration: underline;
            margin-bottom: 30px;
        }
        .col-6.col-md-3 {
            box-shadow: var(--sombra_2);
            button{
                text-transform: capitalize;
                font-weight: 400;
                padding: 15px 10px;
            }
        }
        
        .tit-prod-description {
            height: 40px;
            display: flex;
            width: 100%;
            align-items: flex-start;
            min-width: 100%;
            flex-direction: column;
            padding-left: 0;
            border-bottom: 1px solid #A44F73;
            position: relative;
            z-index: 4;
        }
        .tit-prod-description h4 {
            font-size: 16px;
            font-family: var(--font_1);
            font-weight: 600;
            text-align: left;
            padding-right: 35px;
            width: 100%;
            position: relative;
            color: #A44F73;
            margin: 10px 0;
        }
        .tit-prod-description h4>svg {
            position: absolute;
            right: 0;
            top: -5px;
            cursor: pointer;
            transition: 3ms;
        }
        #product-description{
            display: none;
            padding: 20px 0;
            font-family: var(--font_1);
            font-size: 16px;
            color: #707070;
            position: relative;
            z-index: 2;
        }
        #product-description:before {
            content: '';
            box-shadow: var(--sombra_2);
            width: calc(100% + 30px);
            height: calc(100% + 65px);
            left: -15px;
            top: -50px;
            background-color: #fff;
            border-radius: 25px;
            z-index: -1;
            position: absolute;
        }
        .tit-prod-description h4>svg:nth-child(1) {
            opacity: 1;
        }
        .tit-prod-description.aberto h4>svg:nth-child(1) {
            opacity: 0;
        }
        .tit-prod-description h4>svg:nth-child(2) {
            opacity: 0;
            top: -7px;
            right: -8px;
        }
        .tit-prod-description.aberto h4>svg:nth-child(2) {
            opacity: 1;
        }
        .product-description *{
            width: 100%;
            max-width: initial;
            overflow-wrap:normal;
            color: #707070;
            font-size: 16px;
        }
    }
    
}
.js-modal{
    .modal-header{
        &.modal-right{
            border-radius: 15px 15px 15px 30px;
        }
    }
    &.modal-right .js-modal-close{
            border-radius: 15px 15px 15px 30px;
        }
    &.modal-left .js-modal-close{
        .modal-header, .js-modal-close{
            border-radius: 30px 15px 15px 15px;
        }
    }
    .modal-header{
        background-color: var(--cor_azul_1);
        box-shadow: var(--sombra_2);
        border: none !important;
        color: var(--cor_cinza);
    }
    .modal-close{
        border-color: var(--cor_cinza);
        background-color: #fff;
    }
    .modal-close * {
        fill: var(--cor_cinza);
    }
    .cart-item-delete{
        margin-top: 20px;
    }
    .modal-body{
        padding: 20px;
    }
    .cart-item-name{
        padding-left: 15px;
    }
    .js-ajax-cart-submit .btn-primary{
        background-color: #5C7B61;
    }
    .js-visible-on-cart-filled strong, 
    .js-visible-on-cart-filled{ 
        font-size: 16px;
        font-weight: 400;
    }
    .js-cart-total-container h2 span{
        font-size: 16px;
        font-weight: 600;
        color: #393939;
    }
    .text-primary{
        color: #393939;
    }
    
}
.calcular-cep-cart{
.js-shipping-calculator-form .busca-cep {
        display: flex;
        flex-wrap: wrap;
    }

    .js-shipping-calculator-form {
        .form-control-container {
            box-shadow: var(--sombra_2);
            padding: 0px;
            max-width: 290px;
        }
    }
    .form-group-inline .btn,
    .form-control-container .btn-secondary{
        padding: 10px;
        height: 36px;
    }
    .form-group-inline {
        height: 36px;
    }
    .form-group-inline .form-control{
        padding: 8px;
    }
    

    .js-shipping-zipcode-help {
        text-align: right;
        color: var(--cor_cinza);
        text-decoration: underline;
        margin-bottom: 30px;
    }
}
.js-shipping-calculator-label-default{
    font-size: 13px;
}
.section-brands-home {
    background-color: #fff;

    .brand-image {
        position: absolute;
        min-width: 100%;
        left: 0;
        top: 0;
        object-fit: cover;
        min-height: 100%;
        opacity: 1;
        z-index: -1;

    }
    
}
.section-brands-home{
    .container{
        padding: 0 40px !important;
        position: relative;
    }
    .container .swiper-button-prev{ top: inherit; left: 0; bottom: 40px; }
    .container .swiper-button-next{ top: inherit; right: 0; bottom: 40px; }
}
.slide-container.brands-slider{
    .disc {
        position: relative;
        min-height: 140px;
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }
}
 .disc p {
    color: #fff !important;
    max-width: 460px;
    text-align: center;
}
/* secao sobre a empresa*/
.section-welcome-home{
    position: relative;
    background-size: 50vw auto !important;
    padding-bottom: 0;
    margin-bottom: 30px;
    .h1.text-primary{
        margin-bottom: 25px;
    }
    >img{
        position: absolute;
        height: 100%;
        width: 100%;
        object-fit: cover;
        left: 0;
        top: 0;
        z-index: -1;
    }
    .container{
        margin-bottom: 0;
        position: relative;
        top: 0;
        .box-text{
            padding-top: 80px;
            padding-bottom: 80px;
            text-align: left;
        }
        .box-text p{
            font-size: 20px;
            line-height: 25px;
            margin-bottom: 40px;
        }
        .box-text .btn-primary{
            background: var(--cor_creme);
            border: none;
            padding: 10px 20px;
            font-weight: 400;
            letter-spacing: 1px;
        }
        .box-text .btn-primary:after{
            content: '>';
            display: inline-block;
            line-height: 20px;
            color: var(--cor_creme);
            background-color: #000;
            border-radius: 50px;
            height: 20px;
            width: 20px;
        }
        .box-text .btn-primary:hover:after{
            margin-left: 10px;
            margin-right: -10px;
        }
    }
}
.section-welcome-home .container .box-text h2{
    font-family: var(--font_4);
    font-size: 66px;
    line-height: 61px;
    font-weight: 400;
}

.js-swiper-icones-categorias-2,
.js-swiper-icones-categorias{
    position: relative;
    padding: 0 20px;    
    .swiper-wrapper{
        a p{
            margin-top: 10px;
        }
    }
    .svg-circle-big{
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .swiper-slide a{
        height: 140px;
        width: 140px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
        border: 2px solid #59677B ;
        box-shadow: var(--sombra_3);
        margin: 10px auto;
    }
    .swiper-slide p{
        max-width: 100px;
    }
    .swiper-slide img{
        width: 50px;
    }
}
.section-informative-banners{
    padding: 0;
    margin-top: 40px;
    .service-item-container{
        min-height: 115px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    
}
.section-artigos-home{
    margin-top: 40px;
    margin-bottom: 40px;
    .js-artigos{
        overflow-x: hidden;
    }
    .artigo-item-container{
        min-height: 115px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 20px;
        .img-artigo{
            height: 100px;
            width: 100px;
            padding: 0 !important;
            border-radius: 50%;
            border: 2px solid #59677B;
            box-shadow: var(--sombra_3);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .h5{
            font-weight: 600 !important;
        }
        .col.p-0{
            font-size: 16px;
            line-height: 18px;
        }
    }
    .artigo-item-container:nth-child(1) .img-artigo,
    .artigo-item-container:nth-child(4) .img-artigo{
        border-color: var(--cor_verde_1);
    }
    .artigo-item-container:nth-child(2) .img-artigo,
    .artigo-item-container:nth-child(5) .img-artigo{
        border-color: var(--cor_azul_1);
    }
    .artigo-item-container:nth-child(3) .img-artigo{
        border-color: var(--cor_rosa);
    }
    h3,p{
        color:#000;
        font-size: 16px;
        font-family: var(--font_1);
    }
    h3{
        font-weight: 600px;
    }
    
}
.swiper-container-rtl .swiper-button-next{
    left: 0;
}
.swiper-container-rtl .swiper-button-prev{
     right: 0;
}
.swiper-wrapper{

    .service-item-container:nth-child(1),
    .service-item-container:nth-child(4){
        background-color: var(--cor_creme);
    }
    .service-item-container:nth-child(2),
    .service-item-container:nth-child(5){
        background-color: var(--cor_verde_1);
    }
    .service-item-container:nth-child(3),
    .service-item-container:nth-child(6){
        background-color: var(--cor_azul_1);
    }
}
.service-item{
    max-width: 330px;
    h3.h5 {
        font-family: var(--font_1);
        font-size: 16px;
        font-weight: 400;
    }

    p {
        font-size: 16px;
        font-weight: 600;
        font-family: var(--font_1);
    }
}

.section-video-home, 
.section-featured-home, 
.section-brands-home, 
.section-newsletter-home, 
.section-instafeed-home, 
.section-single-product, 
.section-fb-comments, 
.section-products-related, 
.contact-page{
    margin-bottom: 30px;
}

.section-banners-home{
    margin-top: 30px;
    margin-bottom: 30px;
    .textbanner-image{
        padding-top: 78% !important;
    }
    .box-rounded{
        margin: 0 -15px ;
        border-radius: 0 !important;
    }
    
}

//* estampas *//
.estampas {
    margin-top: 50px;
    height: 290px !important;
    
}
.estampas .swiper-horizontal .swiper-button-prev{ left: 0 !important;}
.estampas .swiper-horizontal .swiper-button-next{ right: 0 !important;}

.estampas .slide-container {
    height: 290px !important;
    padding: 0 40px;
}
.estampas .brand-image {
    min-width: inherit;
    max-width: inherit;
    max-height: inherit;
    min-height: inherit;
    width: 100%;
    opacity: 1;
}
.estampas_thumbs{
    min-height: 50px;
    margin: 0 auto 40px;
    display: block;
    max-width: 800px;
}
.estampas_thumbs span{
    border-radius: 20px;
    min-height: 25px;
    border: 2px solid var(--cor_verde_1);
    font-size: 16px;
    padding: 2px 15px;
    text-align: center;
    margin: 0 auto;
    min-width: 130px;
    max-width: 150px;
    display: inline-block;
    cursor: pointer;
}
.swiper-slide.swiper-slide-thumb-active span{
    background-color: var(--cor_verde_1);
    color: #fff;
}

.swiper-notification{
    display: none !important;
}


/*Categorias*/

.breadcrumbs .divider,
.breadcrumbs .crumb {
    opacity: 1;
    font-family: var(--font_2);
    text-transform: uppercase;
    font-size: 20px !important;
    color:#4D4D4D !important;
    font-weight: 400;
}
.head-light .notification a,
.head-light .notification .svg-icon-text{
    color: var(--cor_cinza);
}
/*Paginas institucionais e cadastro*/
.account-page{
    .box{
        box-shadow: none;
    }
    .box h6{
            color: #A44F73;
            font-size: 16px;
            font-family: var(--font_1);
    }
    .box h6 a{
                color: var(--cor_cinza) !important;
                font-size: 14px !important;
                font-weight: 400 !important;
    
        }
    
    #resetpass-form,
    #login-form{

        display: flex;
        align-items: center;
        flex-direction: column;
        
        .btn-link-primary{
            color: var(--cor_cinza);
        }
    }
    .form-group{
        display: flex;
        align-items: center;
        flex-direction: column;
        max-width: 416px !important;
        margin-left: auto;
        margin-right: auto;
    }
    .form-control,
    .form-select{
        border-radius: 20px !important;
        border: 1px solid #7d7b79 !important;
        box-shadow: 0px 3px 6px #00000029 !important;
        font-size: 16px !important;
        font-family: var(--font_1) !important;
    }
    .btn.btn-primary{
        background-color: #A44F73;
        color: #fff;
        font-size: 16px;
        font-family: var(--font_1);
        text-transform: initial;
        padding: 6px;
        max-width: 175px;
        float: none;
        display: block;
        margin: 5px auto;
    }
    .js-eye-closed{
        display: none;
    }
    .page-header h1{
        display: none;
    }
    .mt-4{
        width: 100%;
    }
    .card-header-collapse{
        background-color: #fff;
        box-shadow: none;
        padding: 40px 20px 0px;
    }
    .card-body{
        padding-top: 0;
        padding-bottom: 0;
    }
    .card-footer a.btn{
        max-width: 100%;
    }
    .font-small{
        font-size: 16px !important;
        margin-bottom: 5px;
        color: #707070;
    }
    .btn-link-primary{
        color: var(--cor_cinza) !important;
        text-decoration: underline;
        strong{
            text-transform: uppercase;
        }
    }
    .svg-icon-primary{
        fill: #A44F73 !important;
    }
}
.page-header h1.text-primary,
.page-header .h1-md.text-primary{
    color: #393939 !important;   
    font-weight: 400 !important;
    font-size: 16px !important;
}
.account-page-breadcrumbs {
    margin: 40px 0;
}
.apoio + .page-header {
    margin-bottom: 40px;
}


@media (min-width: 769px) {
    .category-controls{
        background: transparent;
    }
    .category-body #filters {
        margin-top: -70px;
    }
}


#filters{
    max-width: 100%;
    padding: 0px 15px 25px;
    box-shadow: var(--sombra_2);
    border-top: 11px solid #59677B;
    border-radius: 0px 0px 50px 50px;
    position: relative;
    
}
#filters .abre-fecha{
    border-bottom: 1px solid #4D4D4D50;
    padding-bottom: 5px;
    position: relative;
    transition: 3ms;
    color: #59677B;
    font-size: 16px;
    font-weight: 600;
    font-family: var(--font_1) ;
}
#filters .abre-fecha svg{
    position: absolute;
    right: 0;
    top: 5px;
}
#filters .abre-fecha.aberto svg {
    transform: rotate(90deg);
}
#filters .checkbox-container .checkbox-color{
    display: none;
}
#filters [data-store="filters-group"]:last-child {
    margin-bottom: 10px;
}

#filters .btn-primary {
    background-color: #A44F73;
    text-align: center;
    color: #fff;
    padding: 6px;
    max-width: 145px;
    position: absolute;
    bottom: 20px;
    left: 50%;
    margin-left: -72.5px;
}
.js-price-filter-container .abre-fecha{
    padding-right: 20px;
    cursor: pointer;
}
.js-price-filter-container .abre-fecha:after{
    content: '';
    width: 16px;
    height: 16px;
    position: absolute;
    right: 0;
    top: 4px;
    background: url("{{ 'images/setinha-menu2.svg' | static_url }}") no-repeat center center / 16px;
}
.js-price-filter-container .abre-fecha.aberto:after{
    transform: rotate(90deg);
}
.js-price-filter-container .form-group{
    display: none;
}
.js-product-table.row{
    padding: 0 6%;
}
.chip:nth-child(1){
    background-color: var(--cor_verde_1);
}
.chip:nth-child(2){
    background-color: var(--cor_rosa);
}
.chip:nth-child(3){
    background-color: var(--cor_creme);
}
.chip:nth-child(4){
    background-color: var(--cor_vinho);
}
.js-category-controls .form-group .form-select{
    border: none;
    background-color: #C5D3E3;
    border-radius: 10px;
    font-weight: 400;
    font-family: var(--font_1);
    color: #5C7B61;
}
.form-group .form-select-icon{
    background-color: transparent;
    transform: rotate(90deg);
}
.total_prod{
    position: absolute;
    top: 0;
    color: var(--cor_chumbo);
    font-size: 15px;
}

/*Detalhes do produto*/
.js-alert-added-to-cart .notification.notification-primary{
    max-width: 300px;
    background-color: var(--cor_creme);
    border-radius: 13px;
    box-shadow: var(--sombra_3);
    .js-cart-notification-item strong{
        color: #000;
        font-size: 16px;
        font-family: var(--font_1);
        
    }
    .js-cart-notification-item h5{ 
        color: #A44F73;
        font-size: 16px;
        font-family: var(--font_1);
    }
}

.notification.notification-primary .js-cart-notification-close {
    background-color: #fff;
    border-radius: 50%;
    border: 1px solid #000 !important;
}
.notification.notification-primary .js-cart-notification-close svg{
    fill: #000;
}
.box-breadcrumbs {
    display: flex;
    align-items: center;
    justify-content: center;
}
.compartilhar{
    position: relative;
}
.compartilhar p {
    color: #59677B;
    display: flex !important;
    justify-content: flex-end !important;
    align-items: center;
    cursor: pointer;
    text-align: left !important;
}
.compartilhar p svg{
    margin-right: 5px;
}
.compartilhar small{
    font-size: 11px;
    color: #7D7B79;
}
.social-share{
    margin-top: 0;
    float: right;
    display: none;
    background-color: #fff;
}
.title-produto {
    margin-top: 40px;
    margin-bottom: 20px;
}
.title-produto h2{
    font-size: 22px;
    font-weight: 400;
    font-family: var(--font_1);
}
.sku-product{
    text-align: right;
    display: block;
    margin-bottom: 20px;
}
.product-thumb:hover,
.product-thumb.selected{
    box-shadow: 0px 4px 7px -3px #6a976a !important;
}

[data-store*="product-price-"] span{
    padding-left: 0px;
}
[data-store*="product-price-"] .text-primary{
    color: #000;
    font-size: 32px;
    font-family: var(--font_1);
}

.form-group .form-select{
    border-radius: 0;
    box-shadow: var(--sombra_2);
    border: none;
}
.form-group .form-select-icon{
    background-color: var(--cor_azul_1) !important;
    height: 40px;
    width: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 5px;
    margin: 0;
    bottom: 0px;
    top: inherit;
    right: 0px;
}

.box-quantidade .form-quantity{
    border-radius: 0;
    border: none;
    height: 41px;
    margin: 0;
    display: flex;
    box-shadow: var(--sombra_2);
    align-items: center;
    padding: 0;
    font-size: 9px;
    color: var(--cor_cinza);
    min-width: 118px;
    max-width: 118px;
}

.box-quantidade .form-quantity .row .form-quantity-icon,
.box-quantidade .form-quantity .form-row .form-quantity-icon{
    height: 40px;
    width: 36px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: var(--cor_azul_1);
}
.form-group-inline .btn {
    border: none;
    background-color: var(--cor_azul_1);
    border-radius: 0;
    text-transform: initial;
    font-size: 14px;
    color: #4d4d4d;
    font-weight: 400;
    letter-spacing: initial;
    padding: 15px 10px;
}
.form-group-inline .form-control{
    border-radius: 0;
    border: none;
    
}
.js-calculate-shipping-wording{
    font-size: 14px;
}
.js-shipping-calculator-label-default{
    font-size: 16px;
    color: #4d4d4d;
}

/*Footer*/
footer{
    background-color: #C5D3E3;
    .row{
        margin: 0 !important;
    }
    .bee{
        max-width: 209px !important;
        margin-left: -160px;
    }
    .contact-item,
    .contact-link,
    .footer-menu-link, .h3{
        color: var(--cor_cinza);
    }
    .contact-item-icon{
        fill: #fff;
    }
    .contact-item.endereco{
        padding-left: 0;
    }
    .contact-item.phone{
        padding-left: 20px;
    }
    .contact-item.phone svg{
        transform: rotate(90deg);
        width: 15px;
    }
    .contact-item.email svg{
        width: 15px;
    }
    .contact-item.email{
        padding-left: 20px;
    }
    .footer-legal.copyright{
        background-color: #D9D9D9;
        color: #7D7B79 ;
        font-size: 18px;
        padding: 7px;
    }
    .logos-footer{
        background-color: #fff;
        min-height: 48px;
        padding: 3px;
        .powered-by-logo {
            height: 30px;
            margin: auto 0px;
            width: 110px;

        }
        .powered-by-logo a{
            display: block;
            overflow: hidden;
            padding-top: 5px;
        }
        .powered-by-logo svg{
            fill: #000 !important;
            width: 150px;
            margin-left: -80px;
        }
    }
}



@media (min-width: 1024px) {
.js-product-table>.item-product {
        max-width: calc(33% - 61px);
        margin: 30px;
    }
}

@media (min-width: 769px) {
    
    .mobile{
        display: none !important;
    }
    .price-container .compartilhar p{
        justify-content: flex-end !important;
    }
}
@media (max-width: 768px) {
    .compartilhar-mobile {
        position: absolute;
        right: 0;
        top: 20px;
        z-index: 5;
    }
    .section-welcome-home{
        background-image: none !important;
    }
    .estampas_thumbs .swiper-wrapper {
        display: inline-table;
    }
    .price-container{
        flex-wrap: wrap;
    }
    [data-store*="product-image-"]{
        flex-direction: column;
        
    }
    [data-store*="product-image-"] .thumb-mobile{
        display: flex;
        order: 3;
        justify-content: center;
    }
    [data-store*="product-image-"] .thumb-mobile a{
        height: 60px;
        max-height: 60px;
        width: inherit;
        max-width: 60px;
        overflow: hidden;
        padding: 0 !important;
        margin: 0 15px ;
    }
    .product-image-container{
        padding-top: 40px !important;
    }
    .sku-product{
        text-align: left;
    }
    .swiper-pagination-fraction{
        display: none !important;
    }
    [data-store*="product-image-"] .js-product-thumb{
        position: relative;
    }
    .estampas_thumbs .swiper-slide {
        display: inline-block !important;
        width: auto !important;
    }
    .estampas_thumbs .swiper-slide span {
        min-width: 90px;
        height: auto;
        min-height: 26px;
        margin-bottom: 30px;
    }
    [data-component="menu-button"] svg{
            opacity: 0;
        }
        
    [data-component="menu-button"]:after {
        content: 'Menu';
        font-family: var(--font_1);
        color: var(--cor_cinza);
        font-size: 16px;
        position: absolute;
        left: 50px;
        top: 25px;
        font-weight: 600;
    }
    [data-component="menu-button"]:before {
            content: '';
            background: url("{{ 'images/btn-menu.svg' | static_url }}") no-repeat center center / 35px;
            height: 35px;
            width: 35px;
            position: absolute;
            left: 5;
            top: 20px;
        
    }
    .box-prod-description{
        margin-top: 20px;
        display: flex;
        flex-direction: column;
    }
    #product-description:before {
        left: -15px;
        top: -85px !important;
    
    }
    .js-shipping-calculator-form {
        .form-control-container {
            max-width: initial !important;
        }
    }
    .btn-primary{
        background-color: #5C7B61;
    }
    .head-light.compress  .utilities-container {
        width: 150px;
        right: 0;
        left: inherit;
        top: -15px;
        [data-component="cart.total"]{
            display: none !important;
        }
    }
    header {
        border-radius: 0px 0px 30px 30px;
    }
    .header-logo {
        padding-left: 25% !important;
        width: 85px;
        .logo-img-container{
            min-width: 85px;
        }
    }
    .section-topbar .font-small{
        padding: 3px;
    }
    .js-head-main .search-container{
        padding: 0 25px;

    }
    .js-modal {

        .js-modal-close .modal-close{
            position: absolute;
            right: 0;
            height: 36px;
            width: 36px;
            top: 9px;
            right: 5px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    }
    .cart-summary .utility-name.d-inline-block{
        position: relative!important;
        left: 0!important;
    }
    .utilities-item{
        #ajax-cart a{
            display: flex;
            flex-direction: column;
        } 
    }
    [data-store="slider-main"] {
        margin-top: -20px ;
        padding-top: 30px;
    }
    [data-store="slider-main"] .section-slider{
        padding-bottom: 50px !important;
    }
    [data-store="slider-main"] .section-slider:before{
        background:#fff url("{{ 'images/slide-bottom-2.svg' | static_url }}") no-repeat 0px bottom / 100% 100%;
        height: 60px;
    }
    [data-store="slider-main"] .bee {
        bottom: -85px !important;
    }
    [data-store="slider-main"] .bee svg{
        width: 110px !important;
    }
    .section-featured-home{
        padding: 0 40px;
    }
    .section-featured-home .js-swiper-new-prev{left: 0;}
    .section-featured-home .js-swiper-new-next{ right: 0;}
    .fade-in{
        min-width: 100%;
    }
    .section-welcome-home .row{
        margin: 0 !important;
    }
    .section-welcome-home .container .box-text h2{
        font-size: 50px;
        line-height: 50px;
    }
    .section-welcome-home .container .box-text p{
        font-size: 20px;
    }
    .section-nav-categories img{
        min-width: 60px;
    }
    .artigo-item-container .artigo-item a >div,
    .artigo-item-container .artigo-item >div{
        flex-direction: column;
    }
    .artigo-item-container .artigo-item .col-auto{
        margin-bottom: 30px;
    }
    .artigo-item-container .artigo-item  div.col.p-0{
        min-height: 170px;
    }
    .h1.text-primary {
        font-size: 24px;
        text-transform: uppercase;
        line-height: 33px;
    }
    .modal-with-fixed-footer{
        flex-direction: column-reverse;
    }
    .modal-with-fixed-footer .modal-footer .nav-account{
        background-color: #fff !important;
        max-width: calc(100% - 55px);
        position: relative;
        box-shadow: none;
    }
    .modal-with-fixed-footer .modal-footer {
        border-top: 15px solid #59677B;
    }
    .modal-with-fixed-footer .modal-footer .nav-account a{
        color: #6a976a !important;
    }
    .modal-with-fixed-footer .modal-footer .nav-account svg{
        position: absolute;
        left: 10px;
        top: 12px;
    }
    .modal-nav-hamburger .navigation-topbar{
        background-color: #fff;
    }
    .modal-with-fixed-footer .modal-footer .nav-account {
        display: flex;
        flex-direction: column;
    }
    .modal-with-fixed-footer .modal-footer .nav-account .nav-accounts-item.position-relative a{
        text-decoration: underline;
        color: #393939 !important;
    }
    .modal-with-fixed-footer .modal-scrollable-area .js-modal-close{
        display: none;
    }
    .modal-with-fixed-footer .nav-secondary .js-modal-close{
        position: absolute;
        right: 10px;
        top: 25px;
        height: 25px;
        width: 25px;
        border: 1px solid;
        display: flex;
        align-items: center;
        justify-content: center;
        fill:#4D4D4D;
        color: #4D4D4D;
    }
    .head-light .modal-with-fixed-footer .nav-primary .nav-list-arrow{
        right: -20px;
    }
    .head-light .modal-with-fixed-footer .nav-primary [data-store="navigation"] > div{
        display: none !important;
    }
    .nav-primary> .nav-list> .nav-item.item-with-subitems{
        overflow: hidden;
    }
    .nav-primary> .nav-list> .nav-item> .list-subitems> .item-with-subitems div .nav-list-link{
        background-color: #D9D9D9;
        border-radius: 5px;
        width: calc(100% - 40px);
        margin-top: 5px;
        margin-bottom: 5px;
    }
    .nav-list-accordion .list-subitems li div.nav-item-container span{
        display: none;
    }
    .nav-list-accordion .list-subitems li div.nav-item-container a span{
        display: block;
    }

    .head-light .modal-with-fixed-footer .nav-primary [data-store="navigation"] > .nav-item.item-with-subitems > .js-pages-accordion{
        display: block !important;
    }
    .head-light .nav-primary .nav-list .list-subitems{
        background-color: #fff;
    }
    .category-controls {
        top: 87px !important;
    }
    .filtro-mobile .js-modal-open,
    .js-category-controls .form-group .form-select {
        border: none;
        background-color: #C5D3E3;
        border-radius: 0px;
        font-weight: 400;
        font-family: var(--font_1);
        color: #5C7B61;
    }
    .filtro-mobile .js-modal-open svg{
        transform: rotate(90deg);
    }
    .total_prod{
        position: sticky;
        background: #fff;
        z-index: 100;
        top: 162px;
    }

    #product_form .tit-prod-description {
        margin-bottom: 30px;
        margin-top: 20px;
    }
    
    .artigo-item-container .img-artigo img{
        width: 75px;
    }
    
    footer > .container > .element-footer{
        display: block;
    }
    footer .container .element-footer .bee{
        margin-left: 0;
    }
    footer .copyright div{
        font-size: 14px;
    }
    
}
@media (max-width: 470px) {
    .js-product-table>.item-product {
        max-width: calc(100% - 61px);
        margin: 30px;
    }
}






