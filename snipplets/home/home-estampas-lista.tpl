

<section class="section-estampas-home-lista" style="height: 0; overflow: hidden;margin: 0;padding: 0;">
  <div class="container">
    <h3 class="h1 text-primary">NAVEGUE POR ESTAMPAS</h3>
    <ul class="menu-lista-estampas">
      <li class="item-selecionado"><span>Ver todos</span></li>
      <li><span>{{ settings.slider_lista_estampa_title_2 }}</span></li>
      <li><span>{{ settings.slider_lista_estampa_title_3 }}</span></li>
      <li><span>{{ settings.slider_lista_estampa_title_4 }}</span></li>
      <li><span>{{ settings.slider_lista_estampa_title_5 }}</span></li>
    </ul>
    <div class="content-lista-sliders">
      <div class="lista-1">
        {% if settings.lista_slider_img_estampa_01 and settings.lista_slider_img_estampa_01 is not empty %}
          {% for estampa_01 in settings.lista_slider_img_estampa_01 %}
            <div>
              {% if estampa_01.link %}
              <a href="{{ estampa_01.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% endif %}
                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ estampa_01.image | static_url }}"
                  class="lazyload" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% if estampa_01.link %}
              </a>
              {% endif %}
            </div>
          {% endfor %}
        {% endif %}
      </div>

      <div class="lista-2">
        {% if settings.lista_slider_img_estampa_02 and settings.lista_slider_img_estampa_02 is not empty %}
          {% for estampa_02 in settings.lista_slider_img_estampa_02 %}
            <div>
              {% if estampa_02.link %}
              <a href="{{ estampa_02.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% endif %}
                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ estampa_02.image | static_url }}"
                  class="lazyload" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% if estampa_02.link %}
              </a>
              {% endif %}
            </div>
          {% endfor %}
        {% endif %}
      </div>

      <div class="lista-3">
        {% if settings.lista_slider_img_estampa_03 and settings.lista_slider_img_estampa_03 is not empty %}
          {% for estampa_03 in settings.lista_slider_img_estampa_03 %}
            <div>
              {% if estampa_03.link %}
              <a href="{{ estampa_03.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% endif %}
                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ estampa_03.image | static_url }}"
                  class="lazyload" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% if estampa_03.link %}
              </a>
              {% endif %}
            </div>
          {% endfor %}
        {% endif %}
      </div>
      <div class="lista-4">
        {% if settings.lista_slider_img_estampa_04 and settings.lista_slider_img_estampa_04 is not empty %}
          {% for estampa in settings.lista_slider_img_estampa_04 %}
            <div>
              {% if estampa.link %}
              <a href="{{ estampa.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% endif %}
                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ estampa.image | static_url }}"
                  class="lazyload" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% if estampa.link %}
              </a>
              {% endif %}
            </div>
          {% endfor %}
        {% endif %}
      </div>
      <div class="lista-5">
        {% if settings.lista_slider_img_estampa_05 and settings.lista_slider_img_estampa_05 is not empty %}
          {% for estampa in settings.lista_slider_img_estampa_05 %}
            <div>
              {% if estampa.link %}
              <a href="{{ estampa.link | setting_url }}" title="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}"
                aria-label="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% endif %}
                <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ estampa.image | static_url }}"
                  class="lazyload" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
                {% if estampa.link %}
              </a>
              {% endif %}
            </div>
          {% endfor %}
        {% endif %}
      </div>
  </div>
</section>




<script type="application/javascript">
  const initMenuEstampas = () => {
    document.querySelectorAll('.menu-lista-estampas li').forEach(element => {
      element.addEventListener('click', ()=> {
        document.querySelectorAll('.menu-lista-estampas li').forEach(element => element.removeAttribute('class'))
        element.classList.add('item-selecionado')
      })
    })
  };

  const startMenuEstampas = () => {
    initMenuEstampas();
  }



  document.querySelector('.menu-lista-estampas') ? startMenuEstampas() : null;
</script>