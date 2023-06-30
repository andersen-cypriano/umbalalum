{% if applied_filters %}

    {# Applied filters chips #}

    {% if has_applied_filters %}
        {% if mobile %}
            {# Show subtitle only for mobile applied filters #}
            <div class="mt-4 mb-2">{{ 'Filtro aplicado:' | translate }}</div>
        {% endif %}
        {% for product_filter in product_filters %}
            {% for value in product_filter.values %}

                {# List applied filters as tags #}
                
                {% if value.selected %}
                    <button class="js-remove-filter chip" data-filter-name="{{ product_filter.key }}" data-filter-value="{{ value.name }}" data-component="filter.pill-{{ product_filter.type }}" data-component-value="{{ product_filter.key }}">
                        {{ value.pill_label }}
                        {% include "snipplets/svg/times.tpl" with {svg_custom_class: "icon-inline chip-remove-icon"} %}
                    </button>
                {% endif %}
            {% endfor %}
        {% endfor %}
        <a href="#" class="js-remove-all-filters btn-link btn-link-primary d-inline-block mt-1" data-component="filter-delete">{{ 'Borrar filtros' | translate }}</a> 
    {% endif %}
{% else %}

    {% if product_filters is not empty %}
    <div id="filters" class="visible-when-content-ready" data-store="filters-nav">
            <p class="title-filters">Filtros</p>
            <h3 class="title-section mb-4 abre-fecha">{{ category.id!=0 ? category.name :("Categorías" | translate) }}
                <svg xmlns="http://www.w3.org/2000/svg" width="16.357" height="16.357" viewBox="0 0 16.357 16.357">
                    <g id="Grupo_876" data-name="Grupo 876" transform="translate(7710.679 2611.178)">
                      <path id="Icon_ionic-ios-arrow-dropdown-circle" data-name="Icon ionic-ios-arrow-dropdown-circle" d="M3.375,11.282a7.907,7.907,0,1,0,7.907-7.907A7.906,7.906,0,0,0,3.375,11.282Zm10.991-1.65a.737.737,0,0,1,1.038,0,.725.725,0,0,1,.213.517.737.737,0,0,1-.217.521l-3.585,3.574a.733.733,0,0,1-1.011-.023L7.165,10.594A.734.734,0,0,1,8.2,9.557l3.083,3.114Z" transform="translate(-7713.382 -2591.331) rotate(-92)" fill="#59677b"></path>
                    </g>
                  </svg>
                </h3>
                <ul class="list-unstyled" id="content-opt-filters"> 
                    {% for category in filter_categories %}
                        <li data-item="{{ loop.index }}" class="mb-3"><a href="{{ category.url }}" title="{{ category.name }}" class="btn-link {% if mobile %}btn-link-primary font-weight-normal{% endif %}">{{ category.name }}</a></li>

                        {% if loop.index == 8 and filter_categories | length > 8 %}
                            <div class="js-accordion-container" style="display: none;">
                        {% endif %}
                        {% if loop.last and filter_categories | length > 8 %}
                            </div>
                            <a href="#" class="js-accordion-toggle d-inline-block btn btn-secondary {{ btn_classes }} mt-2">
                                <span class="js-accordion-toggle-inactive">{{ 'Ver más' | translate }}</span>
                                <span class="js-accordion-toggle-active" style="display: none;">{{ 'Ver menos' | translate }}</span>
                            </a>
                        {% endif %}
                    {% endfor %}
                </ul>

            {% if not mobile %}
                <!--<h3 class="title-section mb-2 d-none d-md-block">{{ "Filtrar por" | translate }}</h3>-->
            {% endif %}

            {# Filters list #}

            {% if mobile %}
                {% set btn_classes = 'btn-small' %}
                {% set btn_price_classes = 'btn-small' %}
            {% else %}
                {% set btn_classes = 'btn-extra-small' %}
                {% set btn_price_classes = 'btn-small-extra btn-circle btn-icon chevron' %}
            {% endif %}

            {% for product_filter in product_filters %}

                {% if product_filter.type == 'price' %}

                    {{ component(
                        'price-filter',
                        {'group_class': 'mb-4', 'title_class': 'h5 h6-md mb-3 mt-4 abre-fecha', 'button_class': 'btn btn-secondary ' ~ btn_price_classes }
                        
                    ) }}

                {% else %}
                    {% if product_filter.has_products %}
                        <div class="mb-4" data-store="filters-group" data-component="list.filter-{{ product_filter.type }}" data-component-value="{{ product_filter.key }}">
                            <div class="mb-3 mt-4 abre-fecha {% if mobile %}h5{% else %}h6{% endif %}">
                                {{product_filter.name}}
                                {% include "snipplets/svg/setinha-menu2.tpl" with {svg_custom_class: "icon-inline icon-md"} %}
                            </div>
                            <div class="abre-fecha-content" id="content-opt-filters">
                            {% set index = 0 %}
                            {% for value in product_filter.values %}
                                {% if value.product_count > 0 %}
                                    {% set index = index + 1 %}

                                    <label class="js-filter-checkbox {% if not value.selected %}js-apply-filter{% else %}js-remove-filter{% endif %} checkbox-container" data-filter-name="{{ product_filter.key }}" data-filter-value="{{ value.name }}" data-component="filter.option" data-component-value="{{ value.name }}">
                                        <input type="checkbox" autocomplete='off' {% if value.selected %}checked{% endif %}/>
                                        <span class="checkbox">
                                            <span class="checkbox-icon"></span>
                                            <span class="{% if not mobile %}font-small{% endif %} checkbox-text with-color">
                                                {{ value.name }} ({{ value.product_count }})
                                            </span>
                                            {% if product_filter.type == 'color' and value.color_type == 'insta_color' %}
                                                <span class="checkbox-color" style="background-color: {{ value.color_hexa }};"></span>
                                            {% endif %}
                                        </span>
                                    </label>
                                    {% if index == 8 and product_filter.values_with_products > 8 %}
                                        <div class="js-accordion-container" style="display: none;">
                                    {% endif %}
                                {% endif %}
                                {% if loop.last and product_filter.values_with_products > 8 %}
                                    </div>
                                    <a href="#" class="js-accordion-toggle d-inline-block btn btn-secondary {{ btn_classes }} mt-2">
                                        <span class="js-accordion-toggle-inactive">{{ 'Ver todos' | translate }}</span>
                                        <span class="js-accordion-toggle-active" style="display: none;">{{ 'Ver menos' | translate }}</span>
                                    </a>
                                {% endif %}
                            {% endfor %}
                            </div>
                            
                        </div>
                    {% endif %}
                {% endif %}
            {% endfor %}
            <a href="#" class="js-remove-all-filters btn-link btn-primary btn-block mt-1" data-component="filter-delete">{{ 'Borrar filtros' | translate }}</a> 
        </div>
    {% endif %}
{% endif %}
