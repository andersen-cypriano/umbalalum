{% if settings.welcome_message %}
    <section class="section-welcome-home" style="background-color: {{ settings.welcome_message2 }};">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-12 no-pad justify-content-center d-flex align-items-center"  data-aos-easing="ease" data-aos-delay="1000" data-aos="flip-right">
                    <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "welcome_message_image.jpg" | static_url }}' class="lazyload fade-in"/>
                </div>
                <div class="col-md-6 col-12  no-pad"  data-aos-easing="ease" data-aos-delay="2000" data-aos="fade-left">
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