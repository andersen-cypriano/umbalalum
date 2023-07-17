{% if settings.lista_categorias_true %}
<section class="section-nav-categories text-center" id="test2-ocasiao">
  <div class="container-fluid">
    <div class="row">
      <div class="col p-0 px-md-3">
        {% if settings.lista_categoria_title %}
        <h3 class="h1 text-primary">{{ settings.lista_categoria_title }}</h3>
        {% endif %}
        <div class="js-swiper-icones-categorias swiper-container">
          <div class="swiper-wrapper">
            {% if settings.icone_cat_01_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_01_url | setting_url }}">
                <p>{{ settings.icone_cat_01_title }}</p>
                <img src="{{ "icone_cat_01.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
            {% if settings.icone_cat_02_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_02_url | setting_url }}">
                <p>{{ settings.icone_cat_02_title }}</p>
                <img src="{{ "icone_cat_02.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
            {% if settings.icone_cat_03_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_03_url | setting_url }}">
                <p>{{ settings.icone_cat_03_title }}</p>
                <img src="{{ "icone_cat_03.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
            {% if settings.icone_cat_04_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_04_url | setting_url }}">
                <p>{{ settings.icone_cat_04_title }}</p>
                <img src="{{ "icone_cat_04.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
            {% if settings.icone_cat_05_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_05_url | setting_url }}">
                <p>{{ settings.icone_cat_05_title }}</p>
                <img src="{{ "icone_cat_05.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
            {% if settings.icone_cat_06_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_06_url | setting_url }}">
                <p>{{ settings.icone_cat_06_title }}</p>
                <img src="{{ "icone_cat_06.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
            {% if settings.icone_cat_07_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_07_url | setting_url }}">
                <p>{{ settings.icone_cat_07_title }}</p>
                <img src="{{ "icone_cat_07.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
            {% if settings.icone_cat_08_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_08_url | setting_url }}">
                <p>{{ settings.icone_cat_08_title }}</p>
                <img src="{{ "icone_cat_08.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
            {% if settings.icone_cat_09_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_09_url | setting_url }}">
                <p>{{ settings.icone_cat_09_title }}</p>
                <img src="{{ "icone_cat_09.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
            {% if settings.icone_cat_10_url %}
            <div class="swiper-slide">
              <a href="{{ settings.icone_cat_10_url | setting_url }}">
                <p>{{ settings.icone_cat_10_title }}</p>
                <img src="{{ "icone_cat_10.jpg" | static_url }}"/>
              </a>
            </div>
            {% endif %}
          </div>
          <div
            class="js-swiper-categorias-prev swiper-button-prev svg-circle-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
            {% include "snipplets/svg/arrow-dropright-circle-2.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}
          </div>
          <div
            class="js-swiper-categorias-next swiper-button-next svg-circle-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">
            {% include "snipplets/svg/arrow-dropright-circle.tpl" with {svg_custom_class: "icon-inline icon-2x ml-1"} %}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
{% endif %}
<script>
  var swiper777 = new Swiper(".js-swiper-icones-categorias", {
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
      768: {
        slidesPerView: 4,
        spaceBetween: 40,
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