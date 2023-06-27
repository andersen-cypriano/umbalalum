{% if settings.imagem_texto %}
    <section class="section-welcome-home welcome-home-2">
        <div class="container no-pad">
            <div class="row">
                <a href="{{ settings.imagem_texto3_link | setting_url }}" title="{{ store.name }}">
                    <img src="{{ 'imagem_texto_image.jpg' | static_url }}" alt="TESTE">
                </a>
                
                <!-- <div class="col-md-4 col-12 no-pad justify-content-center d-flex align-items-center"  data-aos-easing="ease" data-aos-delay="1000" data-aos="flip-right">
                    <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "imagem_texto_image.jpg" | static_url }}' class="mobile lazyload fade-in"/>
                </div> -->
            </div>
        </div>
    </section>
{% endif %}