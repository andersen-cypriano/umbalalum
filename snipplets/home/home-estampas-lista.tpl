<section class="section-estampas-home-lista" style="height: 0; overflow: hidden;margin: 0;padding: 0;">
  <div class="container">
    <h3 class="h1 text-primary">NAVEGUE POR ESTAMPAS</h3>
    <ul class="menu-lista-estampas">
      <li class="item-selecionado"><span>Ver todos</span></li>
    </ul>
    <div class="content-lista-sliders" id="">
      <div class="lista-1">
        {% for slide in settings.slider %}
        {% set slide_img = slide.image | static_url %}
        {% if slide.link is empty %}
        <!-- A imagem não possui link -->
        <img src="{{ slide_img }}" data-thumb="{{ slide_img }}" alt="" />
        {% else %}
        <!-- A imagem possui link -->
        <a href="{{ slide.link }}"><img src="{{ slide_img }}" data-thumb="{{ slide_img }}" alt="" /></a>
        {% endif %}
        {% endfor %}
      </div>
    </div>
</section>