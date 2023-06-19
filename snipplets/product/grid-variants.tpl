<div class="js-product-variants {% if quickshop %}js-product-quickshop-variants{% endif %} form-row mb-2">
	{% set has_size_variations = false %}
	{% for variation in product.variations %}

		<div class="js-product-variants-group teste2{% if variation.name in ['Color', 'Cor'] %}js-color-variants-container{% endif %} {% if quickshop %}col-12 {% else %} col-12 {% if loop.length == 3 %} col-md-4 {% else %} col-md-6{% endif %}{% endif %}">
			{% if quickshop %}
                {% for option in variation.options %}
                    <input type="radio" value="{{ option.name }}" name="Tamanho" id="{{ option.id }}" {% if product.default_options[variation.id] == option.id %}selected="selected"{% endif %}>
                {% endfor %}
			{% else %}
				{% embed "snipplets/forms/form-select.tpl" with{select_label: true, select_label_name: '' ~ variation.name ~ '', select_for: 'variation_' ~ loop.index , select_id: 'variation_' ~ loop.index, select_name: 'variation' ~ '[' ~ variation.id ~ ']', select_custom_class: 'js-variation-option js-refresh-installment-data'} %}
					{% block select_options %}
						{% for option in variation.options %}
							<option value="{{ option.id }}" {% if product.default_options[variation.id] == option.id %}selected="selected"{% endif %}>{{ option.name }}</option>
						{% endfor %}
					{% endblock select_options%}
				{% endembed %}
			{% endif %}
		</div>
		{% if variation.name in ['Talle', 'Talla', 'Tamanho', 'Size'] %}
			{% set has_size_variations = true %}
		{% endif %}
	{% endfor %}
	
</div>