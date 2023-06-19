{% if settings.imagem_texto %}
    <section class="section-welcome-home welcome-home-2" style="background: {{ settings.imagem_texto2 }} url({{ 'imagem_texto_image.jpg' | static_url }}) no-repeat 50vw center ;">
        <div class="container no-pad">
            <div class="row">
                <div class="col-md-8 col-12  no-pad"  data-aos-easing="ease" data-aos-delay="800" data-aos="fade-right">
                    <div class="col-12 pl-md-3 box-text">
                        <h2 class="h1">{{ settings.imagem_texto }}</h2>
                        {% if settings.imagem_texto3 %}
                        <p>{{ settings.imagem_texto3 }}</p>
                        {% endif %}
                        {% if settings.welcome_text3 %}
                        <p><strong>{{ settings.imagem_texto4 }}</strong></p>
                        {% endif %}
                        {% if settings.imagem_texto3_link %}
                        <button class="btn-primary">
                            <a href="{{ settings.imagem_texto3_link | setting_url }}" title="{{ store.name }}">
                                {{ settings.imagem_texto3_link_text }}
                            </a>
                        </button>
                        {% endif %}
                    </div>
                </div>
                <div class="col-md-4 col-12 no-pad justify-content-center d-flex align-items-center"  data-aos-easing="ease" data-aos-delay="1000" data-aos="flip-right">
                    <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "imagem_texto_image.jpg" | static_url }}' class="mobile lazyload fade-in"/>
                </div>
            </div>
        </div>
    </section>
{% endif %}