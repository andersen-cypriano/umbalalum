{% if settings.welcome_message %}
<section class="section-welcome-home" style="background-color: {{ settings.welcome_message2 }};">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-12 no-pad justify-content-center d-flex align-items-center" data-aos-easing="ease"
                data-aos-delay="1000" data-aos="flip-right">
                <img src="{{ 'images/empty-placeholder.png' | static_url }}"
                    data-srcset='{{ "welcome_message_image.jpg" | static_url }}' class="lazyload fade-in" />
            </div>
            <div class="col-md-6 col-12  no-pad" data-aos-easing="ease" data-aos-delay="2000" data-aos="fade-left">
                <div class="col-12 pl-md-3 box-text">
                    <h2 class="h1">{{ settings.welcome_message }}</h2>
                    {% if settings.welcome_text %}
                    <p>{{ settings.welcome_text }}</p>
                    {% endif %}
                    {% if settings.welcome_text2 %}
                    <p><strong>{{ settings.welcome_text2 }}</strong></p>
                    {% endif %}
                    {% if settings.welcome_message_link %}
                    <button class="btn-primary">
                        <a href="{{ settings.welcome_message_link | setting_url }}" title="{{ store.name }}">
                            {{ settings.welcome_message_link_text }}
                        </a>
                    </button>
                    {% endif %}
                </div>
            </div>
        </div>
    </div>
</section>
{% endif %}


<div class="col-8 col-md-7 p-0 tabela-medidas">
    
{% set tabelas = product.tags %}
    {% for tabela in tabelas %}
        {% if tabela == 'Tabela 1' or tabela == 'tabela 1' %} 
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_1.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 2' or tabela == 'tabela 2' %}
        <a class="mb-1" data-options='{"smallBtn" : true}'href="{{ "image_tabela_2.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 3' or tabela == 'tabela 3' %}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_3.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 4' or tabela == 'tabela 4' %}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_4.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 5' or tabela == 'tabela 5' %}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_5.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 6' or tabela == 'tabela 6' %}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_6.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 7' or tabela == 'tabela 7'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_7.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 8' or tabela == 'tabela 8'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_8.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 9' or tabela == 'tabela 9'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_9.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 10' or tabela == 'tabela 10'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_10.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 11' or tabela == 'tabela 11'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_11.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 12' or tabela == 'tabela 12'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_12.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 13' or tabela == 'tabela 13'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_13.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 14' or tabela == 'tabela 14'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_14.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 15' or tabela == 'tabela 15'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_15.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 16' or tabela == 'tabela 16'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_16.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 17' or tabela == 'tabela 17'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_17.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 18' or tabela == 'tabela 18'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_18.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 19' or tabela == 'tabela 19'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_19.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% elseif tabela == 'Tabela 20' or tabela == 'tabela 20'%}
        <a class="mb-1" data-options='{"smallBtn" : true}' href="{{ "image_tabela_20.jpg" | static_url }}" data-fancybox data-caption="{{ tabela }}">
            Tabela de medidas
        </a><br>
        {% else %}
        {% endif %}
    {% endfor %}
</div>