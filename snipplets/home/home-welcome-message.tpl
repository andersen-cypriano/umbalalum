{% if settings.welcome_message %}
    <section class="section-welcome-home" style="background-color: {{ settings.welcome_message2 }};">
        <div class="container">
            <div class="row">
                <a href="{{ settings.welcome_message_link | setting_url }}" title="{{ store.name }}">
                    <img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "welcome_message_image.jpg" | static_url }}' class="lazyload fade-in"/>
                </a>
                
            </div>
        </div>
    </section>
{% endif %}