<section class="section-estampas-home" style="display: none;">
  <h3 class="h1 text-primary">NAVEGUE POS ESTAMPAS</h3>
  <div class="container-center">
    <div class="content-lists">
      <div class="list-1">
        {% set num_estampas = 0 %}
        {% for estampa in ['estampa_01', 'estampa_02', 'estampa_03', 'estampa_04', 'estampa_05', 'estampa_06'] %}
        {% set num_estampas = num_estampas + 1 %}
        {% endfor %}

        {% for estampa in ['estampa_01', 'estampa_02', 'estampa_03', 'estampa_04', 'estampa_05', 'estampa_06'] %}
        {% set estampa_image = "#{estampa}.jpg" | has_custom_image %}
        {% set estampa_url = attribute(settings,"#{estampa}_url") %}
        <div class="item_estampa">
          {% if estampa_url %}
          <a href="{{ estampa_url | setting_url }}">
            {% endif %}
            {% if estampa_image %}
              <img src="{{ "#{estampa}.jpg" | static_url }}"/>
            {% endif %}
            {% if estampa_url %}
          </a>
          {% endif %}
        </div>
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
        <div class="item_estampa">
          {% if estampa_url %}
          <a href="{{ estampa_url | setting_url }}">
            {% endif %}
            {% if estampa_image %}
              <img src="{{ "#{estampa}.jpg" | static_url }}"/>
            {% endif %}
            {% if estampa_url %}
          </a>
          {% endif %}
        </div>
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
        <div class="item_estampa">
          {% if estampa_url %}
          <a href="{{ estampa_url | setting_url }}">
            {% endif %}
            {% if estampa_image %}
              <img src="{{ "#{estampa}.jpg" | static_url }}"/>
            {% endif %}
            {% if estampa_url %}
          </a>
          {% endif %}
        </div>
        {% endfor %}
      </div>
      <div class="list-5">
        {% set num_estampas = 0 %}
        {% for estampa in ['estampa_01_4', 'estampa_02_4', 'estampa_03_4', 'estampa_04_4', 'estampa_05_4', 'estampa_06_4'] %}
        {% set num_estampas = num_estampas + 1 %}
        {% endfor %}

        {% for estampa in ['estampa_01_4', 'estampa_02_4', 'estampa_03_4', 'estampa_04_4', 'estampa_05_4', 'estampa_06_4'] %}
        {% set estampa_image = "#{estampa}.jpg" | has_custom_image %}
        {% set estampa_url = attribute(settings,"#{estampa}_url") %}
        <div class="item_estampa">
          {% if estampa_url %}
          <a href="{{ estampa_url | setting_url }}">
            {% endif %}
            {% if estampa_image %}
              <img src="{{ "#{estampa}.jpg" | static_url }}"/>
            {% endif %}
            {% if estampa_url %}
          </a>
          {% endif %}
        </div>
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
        <div class="item_estampa">
          {% if estampa_url %}
          <a href="{{ estampa_url | setting_url }}">
            {% endif %}
            {% if estampa_image %}
              <img src="{{ "#{estampa}.jpg" | static_url }}"/>
            {% endif %}
            {% if estampa_url %}
          </a>
          {% endif %}
        </div>
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
        <div class="item_estampa">
          {% if estampa_url %}
          <a href="{{ estampa_url | setting_url }}">
            {% endif %}
            {% if estampa_image %}
              <img src="{{ "#{estampa}.jpg" | static_url }}"/>
            {% endif %}
            {% if estampa_url %}
          </a>
          {% endif %}
        </div>
        {% endfor %}
      </div>
    </div>

  </div>
  </div>
</section>