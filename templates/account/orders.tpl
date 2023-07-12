<span class="pb-5 d-block apoio"></span>
{% embed "snipplets/page-header.tpl" %}
    {% block page_header_text %}{{ "Mi cuenta" | translate }}{% endblock page_header_text %}
{% endembed %}

<section class="account-page">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="box p-3"> 
                    <h6 class="mb-0">{{ 'Meus dados' | translate }} {{ 'Editar' | translate | a_tag(store.customer_info_url, '', 'float-right') }}</h6>
                    <div class="divider mx-0 mt-1 mb-2"></div>
                    <p class="font-small mb-0">
                        <strong>
                            {% include "snipplets/svg/profile.tpl" with {svg_custom_class: "icon-inline icon-w-14 icon-lg"} %}
                            {{customer.name}}
                        </strong>
                        <span class="d-block">
                            {% include "snipplets/svg/envelope.tpl" with {svg_custom_class: "icon-inline icon-w-14 icon-lg"} %}
                            {{customer.email}}
                        </span>
                        {% if customer.cpf_cnpj %}
                            <span class="d-block">
                                {% include "snipplets/svg/id-card.tpl" with {svg_custom_class: "icon-inline icon-w-14 icon-lg"} %}
                                {{ 'DNI' | translate }}: {{ customer.cpf_cnpj | format_cpf_cnpj }}
                            </span>
                            {% endif %}
                            {% if customer.phone %}
                            <span class="d-block">
                                {% include "snipplets/svg/telephone.tpl" with {svg_custom_class: "icon-inline icon-w-14 icon-lg"} %}
                                {{ customer.phone }}
                            </span>
                            {% endif %}
                        </p>
                        <a href="/account/logout" class="btn-logout">Sair</a>
                    </div>
                    {% if customer.default_address %}
                    <div class="box p-3">
                        <h6 class="mb-0">{{ 'Mis direcciones' | translate }} {{ 'Editar' | translate | a_tag(store.customer_address_url(customer.default_address), '', 'float-right') }}</h6>
                        <div class="divider mx-0 mt-1 mb-2"></div>
                        
                        <p class="mb-0">
                            <span class="d-block font-small my-2">
                                <h6 class="d-block mb-1">
                                    {% include "snipplets/svg/location.tpl" with {svg_custom_class: "icon-inline icon-w-14 icon-lg"} %}
                                    Principal</h6>

                                {{ customer.default_address | format_address_short }}
                            </span><br>
                            {{ 'Otras direcciones' | translate | a_tag(store.customer_addresses_url, '', 'btn-link btn-link-primary font-small') }}
                        </p>
                    </div>
                {% endif %}
            </div>
            <div class="col-md-2"></div>
            <div class="col-md-5">
                <div class="row" data-store="account-orders">
                <div class="box p-3 ">
                    <h6 class="mb-0">{{ 'Mis Compras' | translate }}</h6>
                    <div class="divider mx-0 mt-1 mb-2"></div>
                    {% if customer.orders %}
                        {% for order in customer.orders %}
                            {% set add_checkout_link = order.pending %}
                            {% set card_active = add_checkout_link ? true : false  %}
                            <div class="col-md-12" data-store="account-order-item-{{ order.id }}">
                                {% embed "snipplets/card.tpl" with{card_footer: true, card_custom_class: 'box card-collapse ', card_active: card_active, card_collapse: true} %}
                                    {% block card_head %}
                                        <div class="row">
                                            <div class="col p-0">
                                                <p class="font-small">
                                                     <a class="btn-link-primary" href="{{ store.customer_order_url(order) }}"><strong>{{'Orden' | translate}}: #{{order.number}}</strong></a>
                                                </p>
                                                <p class="font-small">{{ order.date | i18n_date('%d/%m/%Y') }}</p>
                                            </div>
                                        </div>
                                        <span class="card-collapse-toggle d-none d-md-block">
                                            <a class="btn-link-primary olho" href="{{ store.customer_order_url(order) }}">
                                                {% include "snipplets/svg/eye.tpl" with {svg_custom_class: "icon-inline icon-w-14 icon-lg"} %}
                                            </a>
                                        </span>
                                        <div class="divider mx-0 mt-1 mb-2"></div>
                                    {% endblock %}
                                    {% block card_body %}
                                    <div class="container container-fluid p-0">
                                        <div class="row">
                                            <div class="col-4 p-0">
                                                <div class="card-img-square-container">
                                                    {% for item in order.items %}
                                                        {% if loop.first %} 
                                                            {% if loop.length > 1 %} 
                                                                <span class="card-img-pill">{{ loop.length }} {{'Productos' | translate }}</span>
                                                            {% endif %}
                                                            {{ item.featured_image | product_image_url("") | img_tag(item.featured_image.alt, {class: 'card-img-square'}) }}
                                                        {% endif %}
                                                    {% endfor %}
                                                </div>
                                            </div>
                                            <div class="col-8">
                                                <p class="font-small mb-2">
                                                    <strong>{{'Pago' | translate}}:</strong> <span class="{{ order.payment_status }}">{{ (order.payment_status == 'pending'? 'Pendiente' : (order.payment_status == 'authorized'? 'Autorizado' : (order.payment_status == 'paid'? 'Pagado' : (order.payment_status == 'voided'? 'Cancelado' : (order.payment_status == 'refunded'? 'Reintegrado' : 'Abandonado'))))) | translate }}</span>
                                                </p>
                                                <p class="font-small">
                                                    <strong>{{'Envío' | translate}}: </strong> {{ (order.shipping_status == 'fulfilled'? 'Enviado' : 'No enviado') | translate }}
                                                </p>
                                                <p class="font-small">
                                                    <strong>{{'Total' | translate}}</strong> {{ order.total | money }}
                                                </p>
                                                <a class="btn-link-primary ver-detalhes font-small" href="{{ store.customer_order_url(order) }}">{{'Ver detalle >' | translate}}</a>
                                            </div>
                                        </div>
                                    </div>
                                    {% endblock %}
                                    {% block card_foot %}
                                        {% if add_checkout_link %}
                                            <a class="btn btn-primary btn-small d-block" href="{{ order.checkout_url | add_param('ref', 'orders_list') }}" target="_blank">{{'Realizar el pago' | translate}}</a>
                                        {% elseif order.order_status_url != null %}
                                            <a class="btn btn-primary btn-small d-block" href="{{ order.order_status_url | add_param('ref', 'orders_list') }}" target="_blank">{% if 'Correios' in order.shipping_name %}{{'Seguí la entrega' | translate}}{% else %}{{'Seguí tu orden' | translate}}{% endif %}</a>
                                        {% endif %}
                                    {% endblock %}
                                {% endembed %}
                            </div>
                        {% endfor %}
                    {% else %}
                    <div class="col text-center">
                        {% include "snipplets/svg/bag.tpl" with {svg_custom_class: "icon-inline mr-1 icon-lg svg-icon-primary"} %}
                        <p class="mt-2">{{ '¡Hacé tu primera compra!' | translate }}</p>
                        {{ 'Ir a la tienda' | translate | a_tag(store.url, '', 'btn btn-primary btn-small w-100 mt-2') }}
                    </div>
                    {% endif %}
                </div>
            </div>
            </div>
        </div>
    </div>
</section>