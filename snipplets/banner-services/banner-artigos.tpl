
{% if settings.artigos_home %}
    <section class="section-artigos-home">
        <div class="container">
            <div class="row">
                <div class="col p-0 px-md-3">
                    <div class="js-artigos swiper">
                        <div class="swiper-wrapper">
                            {% if settings.artigo_01_title %}
                            <div class="artigo-item-container  swiper-slide">
                                <div class="artigo-item mx-4 mx-md-0">
                                    {% if settings.artigo_01_url %}
                                    <a href="{{ settings.artigo_01_url | setting_url }}">
                                        {% endif %}
                                        <div class="row align-items-center">
                                            <div class="col-auto">
                                                <div class="img-artigo">
                                                    {{ "artigo_1_img.jpg" | static_url | img_tag("") }}
                                                </div>
                                            </div>
                                            <div class="col p-0">
                                                <h3 class="h5 m-0">{{ settings.artigo_01_title }}</h3>
                                                <p class="m-0">{{ settings.artigo_01_description }}</p>
                                            </div>
                                        </div>
                                        {% if settings.artigo_01_url %}
                                    </a>
                                    {% endif %}
                                </div>
                            </div>
                            {% endif %}
                            {% if settings.artigo_02_title %}
                            <div class="artigo-item-container  swiper-slide">
                                <div class="artigo-item mx-4 mx-md-0">
                                    {% if settings.artigo_02_url %}
                                    <a href="{{ settings.artigo_02_url | setting_url }}">
                                    {% endif %}
                                        <div class="row align-items-center">
                                            <div class="col-auto">
                                                <div class="img-artigo">
                                                    {{ "artigo_2_img.jpg" | static_url | img_tag("") }}
                                                </div>
                                            </div>
                                            <div class="col p-0">
                                                <h3 class="h5 m-0">{{ settings.artigo_02_title }}</h3>
                                                <p class="m-0">{{ settings.artigo_02_description }}</p>
                                            </div>
                                        </div>
                                    {% if settings.artigo_02_url %}
                                    </a>
                                    {% endif %}
                                </div>
                            </div>
                            {% endif %}
                            {% if settings.artigo_03_title %}
                            <div class="artigo-item-container  swiper-slide">
                                <div class="artigo-item mx-4 mx-md-0">
                                    {% if settings.artigo_03_url %}
                                    <a href="{{ settings.artigo_03_url | setting_url }}">
                                        {% endif %}
                                        <div class="row align-items-center">
                                            <div class="col-auto">
                                                <div class="img-artigo">
                                                    {{ "artigo_3_img.jpg" | static_url | img_tag("") }}
                                                </div>
                                            </div>
                                            <div class="col p-0">
                                                <h3 class="h5 m-0">{{ settings.artigo_03_title }}</h3>
                                                <p class="m-0">{{ settings.artigo_03_description }}</p>
                                            </div>
                                        </div>
                                        {% if settings.artigo_03_url %}
                                    </a>
                                    {% endif %}
                                </div>
                            </div>
                            {% endif %}
                            {% if settings.artigo_04_title %}
                            <div class="artigo-item-container swiper-slide">
                                <div class="artigo-item mx-4 mx-md-0">
                                    {% if settings.artigo_04_url %}
                                    <a href="{{ settings.artigo_04_url | setting_url }}">
                                        {% endif %}
                                        <div class="row align-items-center">
                                            <div class="col-auto">
                                                <div class="img-artigo">
                                                    {{ "artigo_4_img.jpg" | static_url | img_tag("") }}
                                                </div>
                                            </div>
                                            <div class="col p-0">
                                                <h3 class="h5 m-0">{{ settings.artigo_04_title }}</h3>
                                                <p class="m-0">{{ settings.artigo_04_description }}</p>
                                            </div>
                                        </div>
                                        {% if settings.artigo_04_url %}
                                    </a>
                                    {% endif %}
                                </div>
                            </div>
                            {% endif %}
                        </div>
                        <div class="js-swiper-artigos-prev swiper-button-prev svg-circle-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">{% include "snipplets/svg/arrow-dropright-circle-2.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}</div>
                        <div class="js-swiper-artigos-next swiper-button-next svg-circle-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">{% include "snipplets/svg/arrow-dropright-circle.tpl" with {svg_custom_class: "icon-inline icon-2x ml-1"} %}</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
{% endif %}



