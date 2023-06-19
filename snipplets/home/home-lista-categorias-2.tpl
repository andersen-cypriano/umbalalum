

{% if settings.lista_categorias_true_2 %}
<section class="section-nav-categories text-center">
    <div class="container">
        <div class="row">
            <div class="col p-0 px-md-3">
                {% if settings.lista_categoria_title_2 %}
                    <h3 class="h1 text-primary">{{ settings.lista_categoria_title_2 }}</h3>
                {% endif %}
                <div class="js-swiper-icones-categorias-2 swiper-container">
                    <div class="swiper-wrapper">
                        {% if settings.icone_cat_01_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_01_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_01_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_01_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                        {% if settings.icone_cat_02_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_02_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_02_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_02_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                        {% if settings.icone_cat_03_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_03_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_03_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_03_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                        {% if settings.icone_cat_04_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_04_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_04_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_04_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                        {% if settings.icone_cat_05_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_05_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_05_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_05_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                        {% if settings.icone_cat_06_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_06_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_06_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_06_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                        {% if settings.icone_cat_07_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_07_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_07_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_07_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                        {% if settings.icone_cat_08_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_08_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_08_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_08_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                        {% if settings.icone_cat_09_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_09_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_09_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_09_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                        {% if settings.icone_cat_10_url_2 %}
                        <div class="swiper-slide">
                            <a href="{{ settings.icone_cat_10_url_2 | setting_url }}">
                                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "icone_cat_10_2.jpg" | static_url }}' class="lazyload fade-in" />
                                <p>{{ settings.icone_cat_10_title_2 }}</p>
                            </a>
                        </div>
                        {% endif %}
                        
                    </div>
                    <div class="js-swiper-categorias-prev swiper-button-prev svg-circle-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">{% include "snipplets/svg/arrow-dropright-circle-2.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}</div>
                    <div class="js-swiper-categorias-next swiper-button-next svg-circle-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">{% include "snipplets/svg/arrow-dropright-circle.tpl" with {svg_custom_class: "icon-inline icon-2x ml-1"} %}</div>
                </div>
            </div>
        </div>
    </div>
</section>
{% endif %}
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script>


    var swiper888 = new Swiper(".js-swiper-icones-categorias-2", {
        slidesPerView: 6,
        spaceBetween: 10,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: '.js-swiper-categorias-next',
            prevEl: '.js-swiper-categorias-prev',
        },
         breakpoints: {
            0: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            1024: {
                slidesPerView: 5,
                spaceBetween: 20,
            },
            1340: {
                slidesPerView: 6,
                
            },
        },
    });
</script>