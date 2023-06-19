

<section class="section-estampas-home">
  <div class="container">
    <div class="row">
      <div class="col p-0 px-md-3 text-center">
       <h3 class="h1 text-primary">NAVEGUE POS ESTAMPAS</h3>
        <div thumbsSlider="" class="estampas_thumbs">
          <div class="swiper-wrapper">
            <div class="swiper-slide"><span>Ver todas</span></div>
            <div class="swiper-slide"><span>{{ settings.lista_estampa_title_2 }}</span></div>
            <div class="swiper-slide"><span>{{ settings.lista_estampa_title_3 }}</span></div>
            <div class="swiper-slide"><span>{{ settings.lista_estampa_title_4 }}</span></div>
            <div class="swiper-slide"><span>{{ settings.lista_estampa_title_5 }}</span></div>
          </div>
        </div>

        <div class="col p-0 px-md-3">
          <div class="estampas swiper-container">
            <div class="swiper-wrapper" style="flex-direction: column !important">
              <div class="swiper-slide slide-container">
                <div class="swiper estampa_1">
                  <div class="swiper-wrapper">
                    
                    {% if settings.slider_img_estampa_01 and settings.slider_img_estampa_01 is not empty %}
                    {% for estampa in settings.slider_img_estampa_01 %}
                    <div class="swiper-slide">
                      {% if estampa.link %}
                      <a href="{{ estampa.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                        aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% endif %}
                        {% if estampa.titulo %}
                        <p>{{ estampa.titulo }}</p>
                        {% endif %}
                        <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ estampa.image | static_url }}"
                          class="lazyload brand-image" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% if estampa.link %}
                      </a>
                      {% endif %}
                    </div>
                    {% endfor %}
                    {% endif %}
                  </div>

                  <div class="js-swiper-estampa_1-prev swiper-button-prev d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle-2.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                  <div class="js-swiper-estampa_1-next swiper-button-next d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                </div>
              </div>
              <div class="swiper-slide slide-container">
                <div class="swiper estampa_2">
                  <div class="swiper-wrapper">
                    {% if settings.slider_img_estampa_02 and settings.slider_img_estampa_02 is not empty %}
                    {% for slide in settings.slider_img_estampa_02 %}
                    <div class="swiper-slide">
                      {% if slide.link %}
                      <a href="{{ slide.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                        aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% endif %}
                        {% if slide.titulo %}
                        <p>{{ slide.titulo }}</p>
                        {% endif %}
                        <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ slide.image | static_url }}"
                          class="lazyload brand-image" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% if slide.link %}
                      </a>
                      {% endif %}
                    </div>
                    {% endfor %}
                    {% endif %}
                  </div>
                  <div class="js-swiper-estampa_2-prev swiper-button-prev d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle-2.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                  <div class="js-swiper-estampa_2-next swiper-button-next d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                </div>
              </div>
              <div class="swiper-slide slide-container">
                <div class="swiper estampa_3">
                  <div class="swiper-wrapper">
                    {% if settings.slider_img_estampa_03 and settings.slider_img_estampa_03 is not empty %}
                    {% for slide in settings.slider_img_estampa_03 %}
                    <div class="swiper-slide">
                      {% if slide.link %}
                      <a href="{{ slide.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                        aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% endif %}
                        {% if slide.titulo %}
                        <p>{{ slide.titulo }}</p>
                        {% endif %}
                        <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ slide.image | static_url }}"
                          class="lazyload brand-image" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% if slide.link %}
                      </a>
                      {% endif %}
                    </div>
                    {% endfor %}
                    {% endif %}
                  </div>
                  <div class="js-swiper-estampa_3-prev swiper-button-prev d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle-2.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                  <div class="js-swiper-estampa_3-next swiper-button-next d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                </div>
              </div>
              <div class="swiper-slide slide-container">
                <div class="swiper estampa_4">
                  <div class="swiper-wrapper">
                    {% if settings.slider_img_estampa_04 and settings.slider_img_estampa_04 is not empty %}
                    {% for slide in settings.slider_img_estampa_04 %}
                    <div class="swiper-slide">
                      {% if slide.link %}
                      <a href="{{ slide.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                        aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% endif %}
                        {% if slide.titulo %}
                        <p>{{ slide.titulo }}</p>
                        {% endif %}
                        <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ slide.image | static_url }}"
                          class="lazyload brand-image" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% if slide.link %}
                      </a>
                      {% endif %}
                    </div>
                    {% endfor %}
                    {% endif %}
                  </div>
                  <div class="js-swiper-estampa_4-prev swiper-button-prev d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle-2.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                  <div class="js-swiper-estampa_4-next swiper-button-next d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                </div>
              </div>
              <div class="swiper-slide slide-container">
                <div class="swiper estampa_5">
                  <div class="swiper-wrapper">
                    {% if settings.slider_img_estampa_05 and settings.slider_img_estampa_05 is not empty %}
                    {% for slide in settings.slider_img_estampa_05 %}
                    <div class="swiper-slide">
                      {% if slide.link %}
                      <a href="{{ slide.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                        aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% endif %}
                        {% if slide.titulo %}
                        <p>{{ slide.titulo }}</p>
                        {% endif %}
                        <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ slide.image | static_url }}"
                          class="lazyload brand-image" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                        {% if slide.link %}
                      </a>
                      {% endif %}
                    </div>
                    {% endfor %}
                    {% endif %}
                  </div>
                  <div class="js-swiper-estampa_5-prev swiper-button-prev d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle-2.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                  <div class="js-swiper-estampa_5-next swiper-button-next d-md-block-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
                    {% include "snipplets/svg/arrow-dropright-circle.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
</section>

<!-- Initialize Swiper -->
<script>
  var btn_estampas = new Swiper(".estampas_thumbs", {
    spaceBetween: 10,
    slidesPerView: 5,
    watchSlidesProgress: true,
    
  });
  var estampas = new Swiper(".estampas", {
    spaceBetween: 0,
    autoHeight: true,
    direction: "vertical",
    thumbs: {
      swiper: btn_estampas,
    },
  });
  var estampa_1 = new Swiper(".estampa_1", {
    spaceBetween: 30,
    slidesPerView: 4,
    navigation: {
      nextEl: ".js-swiper-estampa_1-next",
      prevEl: ".js-swiper-estampa_1-prev",
    },
    breakpoints: { 
      0: { slidesPerView: 1.5, },
      461: { slidesPerView: 4, }
    }
  });
  //estampa_1.removeSlide($('.swiper-slide.active'));
  $('.estampa_1 .swiper-slide.swiper-slide-active').remove();
  var estampa_2 = new Swiper(".estampa_2", {
    spaceBetween: 30,
    slidesPerView: 4,
    navigation: {
      nextEl: ".js-swiper-estampa_2-next",
      prevEl: ".js-swiper-estampa_2-prev",
    },
    breakpoints: {
      0: { slidesPerView: 1.5, },
      461: { slidesPerView: 4, }
    }
  });
  $('.estampa_2 .swiper-slide.swiper-slide-active').remove();
  var estampa_3 = new Swiper(".estampa_3", {
    spaceBetween: 30,
    slidesPerView: 4,
    navigation: {
      nextEl: ".js-swiper-estampa_3-next",
      prevEl: ".js-swiper-estampa_3-prev",
    },
    breakpoints: {
      0: { slidesPerView: 1.5, },
      461: { slidesPerView: 4, }
    }
  });
  $('.estampa_3 .swiper-slide.swiper-slide-active').remove();
  var estampa_4 = new Swiper(".estampa_4", {
    spaceBetween: 30,
    slidesPerView: 4,
    navigation: {
      nextEl: ".js-swiper-estampa_4-next",
      prevEl: ".js-swiper-estampa_4-prev",
    },
    breakpoints: {
      0: { slidesPerView: 1.5, },
      461: { slidesPerView: 4, }
    }

  });
  $('.estampa_4 .swiper-slide.swiper-slide-active').remove();
  var estampa_5 = new Swiper(".estampa_5", {
    spaceBetween: 30,
    slidesPerView: 4,
    navigation: {
      nextEl: ".js-swiper-estampa_5-next",
      prevEl: ".js-swiper-estampa_5-prev",
    },
    breakpoints: {
      0: { slidesPerView: 1.5, },
      461: { slidesPerView: 4, }
    }
  });
  $('.estampa_5 .swiper-slide.swiper-slide-active').remove();
</script>
