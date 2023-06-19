    <script>
        setTimeout(() => {
            var qtd_prod = $(".js-product-table .js-item-product").length;
            $("span.total_prod").text("Exibindo " + qtd_prod + " produtos.");
        }, 2000);
            
    </script>
{% if products and pages.is_last %}
	<div class="last-page" style="display:none;"></div>
{% endif %}
<span class="total_prod"></span>
{% for product in products %}   
{% include 'snipplets/grid/item.tpl' %}
{% endfor %}