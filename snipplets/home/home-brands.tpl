{% if settings.brands and settings.brands is not empty %}
<div class="col text-center">
	<h3 class="h1 text-primary">Veja o que nossos clientes estão dizendo</h3>
</div>
<div class="content-sessao-depoimentos">
	<div class="content-desktop" style="display: flex;">
		{% for slidedepdesktpo in settings.imgesdepoimentos_desktop %}
		<div class="item-depoimento">
			<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ slidedepdesktpo.image | static_url }}"
				class="lazyload" alt="">
		</div>
		{% endfor %}
	</div>
	<div class="content-mobile">
		{% for slidedepmobile in settings.imgesdepoimentos_mobile %}
		<div class="item-depoimento">
			<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ slidedepmobile.image | static_url }}"
				class="lazyload" alt="">
		</div>
		{% endfor %}
	</div>
</div>
<!-- <section class="section-brands-home">
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
								<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ slide.image | static_url }}"
									class="lazyload" alt="{{slide.image.width}}">
							</div>
						</div>
						{% endfor %}
					</div>
				</div>
				
			</div>
		</div>
	</div>
</section> -->
{% endif %}
