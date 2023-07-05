{% if settings.imagem_texto %}
    <section class="section-welcome-home welcome-home-2">
        <div class="container no-pad">
            <div class="row">
                <a href="{{ settings.imagem_texto3_link | setting_url }}" title="{{ store.name }}">
                    <img src="{{ 'imagem_texto_image.jpg' | static_url }}" alt="TESTE">
                </a>
            </div>
        </div>
    </section>
{% endif %}