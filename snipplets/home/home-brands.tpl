{% if settings.brands and settings.brands is not empty %}
	<section class="section-brands-home">
		<div class="container">
			<div class="row">
				<div class="col p-0 px-md-3">
					<div class="col text-center">
						<h3 class="h1 text-primary">Veja o que nossos clientes estão dizendo</h3>
					</div>
					<div class="js-swiper-brands swiper-container">
					    <div class="swiper-wrapper">
					        {% for slide in settings.brands %}
				                <div class="swiper-slide slide-container brands-slider">
				                	<div class="disc">
											<p>{{ slide.link }}</p>		
				                		<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ slide.image | static_url }}" class="lazyload brand-image" alt="{{ 'Marca {1} de' | translate(loop.index) }} {{ store.name }}">
				            		</div>
				            	</div>
					        {% endfor %}
					    </div>
					</div>
				</div>
				<div class="js-swiper-brands-prev swiper-button-prev d-none d-md-block svg-circle-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">{% include "snipplets/svg/arrow-dropright-circle-2.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}</div>
				<div class="js-swiper-brands-next swiper-button-next d-none d-md-block svg-circle-big svg-icon-text{% if settings.icons_solid %} svg-solid{% endif %}">{% include "snipplets/svg/arrow-dropright-circle.tpl" with {svg_custom_class: "icon-inline icon-2x mr-1"} %}</div>
			</div>
		</div>
	</section>
{% endif %}