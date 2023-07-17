<section class="section-estampas-home" style="height: 0; overflow: hidden;">
  <h3 class="h1 text-primary">NAVEGUE POS ESTAMPAS</h3>
  <ul class="menu-estampas">
    {%if settings.title_list_01 and settings.title_list_01 is not empty%}
      <li class="item-selecionado">{{settings.title_list_01}}</li>
    {% endif %}
    {%if settings.title_list_02 and settings.title_list_02 is not empty%}
      <li>{{settings.title_list_02}}</li>
    {% endif %}
    {%if settings.title_list_03 and settings.title_list_03 is not empty%}
      <li>{{settings.title_list_03}}</li>
    {% endif %}
    {%if settings.title_list_04 and settings.title_list_04 is not empty%}
      <li>{{settings.title_list_04}}</li>
    {% endif %}
    {%if settings.title_list_05 and settings.title_list_05 is not empty%}
      <li>{{settings.title_list_05}}</li>
    {% endif %}
    {%if settings.title_list_06 and settings.title_list_06 is not empty%}
      <li>{{settings.title_list_06}}</li>
    {% endif %}
  </ul>
  <div class="container-center">
    <div class="content-lists">
      <div class="list-1 selected-list">
        {% set num_estampas = 0 %}
        {% for estampa in ['estampa_01', 'estampa_02', 'estampa_03', 'estampa_04', 'estampa_05', 'estampa_06'] %}
        {% set num_estampas = num_estampas + 1 %}
        {% endfor %}

        {% for estampa in ['estampa_01', 'estampa_02', 'estampa_03', 'estampa_04', 'estampa_05', 'estampa_06'] %}
        {% set estampa_image = "#{estampa}.jpg" | has_custom_image %}
        {% set estampa_url = attribute(settings,"#{estampa}_url") %}
        {% if estampa_image and estampa_image is not empty %}
          <div class="item_estampa">
            {% if estampa_url %}
            <a href="{{ estampa_url | setting_url }}">
              {% endif %}
              <img src="{{ "#{estampa}.jpg" | static_url }}" />
              {% if estampa_url %}
            </a>
            {% endif %}
          </div>
        {% endif %}
        {% endfor %}
      </div>

      <div class="list-2">
        {% set num_estampas = 0 %}
        {% for estampa in ['estampa_01_2', 'estampa_02_2', 'estampa_03_2', 'estampa_04_2', 'estampa_05_2', 'estampa_06_2'] %}
        {% set num_estampas = num_estampas + 1 %}
        {% endfor %}

        {% for estampa in ['estampa_01_2', 'estampa_02_2', 'estampa_03_2', 'estampa_04_2', 'estampa_05_2', 'estampa_06_2'] %}
        {% set estampa_image = "#{estampa}.jpg" | has_custom_image %}
        {% set estampa_url = attribute(settings,"#{estampa}_url") %}
        {% if estampa_image and estampa_image is not empty %}
          <div class="item_estampa">
            {% if estampa_url %}
            <a href="{{ estampa_url | setting_url }}">
              {% endif %}
              <img src="{{ "#{estampa}.jpg" | static_url }}" />
              {% if estampa_url %}
            </a>
            {% endif %}
          </div>
        {% endif %}
        {% endfor %}
      </div>
      <div class="list-3">
        {% set num_estampas = 0 %}
        {% for estampa in ['estampa_01_3', 'estampa_02_3', 'estampa_03_3', 'estampa_04_3', 'estampa_05_3', 'estampa_06_3'] %}
        {% set num_estampas = num_estampas + 1 %}
        {% endfor %}

        {% for estampa in ['estampa_01_3', 'estampa_02_3', 'estampa_03_3', 'estampa_04_3', 'estampa_05_3', 'estampa_06_3'] %}
        {% set estampa_image = "#{estampa}.jpg" | has_custom_image %}
        {% set estampa_url = attribute(settings,"#{estampa}_url") %}
        {% if estampa_image and estampa_image is not empty %}
          <div class="item_estampa">
            {% if estampa_url %}
            <a href="{{ estampa_url | setting_url }}">
              {% endif %}
              <img src="{{ "#{estampa}.jpg" | static_url }}" />
              {% if estampa_url %}
            </a>
            {% endif %}
          </div>
        {% endif %}
        {% endfor %}
      </div>
      <div class="list-4">
        {% set num_estampas = 0 %}
        {% for estampa in ['estampa_01_4', 'estampa_02_4', 'estampa_03_4', 'estampa_04_4', 'estampa_05_4', 'estampa_06_4'] %}
        {% set num_estampas = num_estampas + 1 %}
        {% endfor %}

        {% for estampa in ['estampa_01_4', 'estampa_02_4', 'estampa_03_4', 'estampa_04_4', 'estampa_05_4', 'estampa_06_4'] %}
        {% set estampa_image = "#{estampa}.jpg" | has_custom_image %}
        {% set estampa_url = attribute(settings,"#{estampa}_url") %}
        {% if estampa_image and estampa_image is not empty %}
          <div class="item_estampa">
            {% if estampa_url %}
            <a href="{{ estampa_url | setting_url }}">
              {% endif %}
              <img src="{{ "#{estampa}.jpg" | static_url }}" />
              {% if estampa_url %}
            </a>
            {% endif %}
          </div>
        {% endif %}
        {% endfor %}
      </div>
      <div class="list-5">
        {% set num_estampas = 0 %}
        {% for estampa in ['estampa_01_5', 'estampa_02_5', 'estampa_03_5', 'estampa_04_5', 'estampa_05_5', 'estampa_06_5'] %}
        {% set num_estampas = num_estampas + 1 %}
        {% endfor %}

        {% for estampa in ['estampa_01_5', 'estampa_02_5', 'estampa_03_5', 'estampa_04_5', 'estampa_05_5', 'estampa_06_5'] %}
        {% set estampa_image = "#{estampa}.jpg" | has_custom_image %}
        {% set estampa_url = attribute(settings,"#{estampa}_url") %}
        {% if estampa_image and estampa_image is not empty %}
          <div class="item_estampa">
            {% if estampa_url %}
            <a href="{{ estampa_url | setting_url }}">
              {% endif %}
              <img src="{{ "#{estampa}.jpg" | static_url }}" />
              {% if estampa_url %}
            </a>
            {% endif %}
          </div>
        {% endif %}
        {% endfor %}
      </div>
      <div class="list-6">
        {% set num_estampas = 0 %}
        {% for estampa in ['estampa_01_6', 'estampa_02_6', 'estampa_03_6', 'estampa_04_6', 'estampa_05_6', 'estampa_06_6'] %}
        {% set num_estampas = num_estampas + 1 %}
        {% endfor %}

        {% for estampa in ['estampa_01_6', 'estampa_02_6', 'estampa_03_6', 'estampa_04_6', 'estampa_05_6', 'estampa_06_6'] %}
        {% set estampa_image = "#{estampa}.jpg" | has_custom_image %}
        {% set estampa_url = attribute(settings,"#{estampa}_url") %}
        {% if estampa_image and estampa_image is not empty %}
          <div class="item_estampa">
            {% if estampa_url %}
            <a href="{{ estampa_url | setting_url }}">
              {% endif %}
              <img src="{{ "#{estampa}.jpg" | static_url }}" />
              {% if estampa_url %}
            </a>
            {% endif %}
          </div>
        {% endif %}
        {% endfor %}
      </div>
    </div>

  </div>
  </div>
</section>