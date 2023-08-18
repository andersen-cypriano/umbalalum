{% set has_main_slider = settings.slider and settings.slider is not empty %}
{% set has_mobile_slider = settings.toggle_slider_mobile and settings.slider_mobile and settings.slider_mobile is not empty %}
{% set has_informative_banners = settings.banner_services and (settings.banner_services_01_title or settings.banner_services_02_title or settings.banner_services_03_title or settings.banner_services_04_title) %}
{% set has_category_banners =  settings.banner_01_show or settings.banner_02_show or settings.banner_03_show %}
{% set has_brands = settings.brands and settings.brands is not empty %}
{% set has_video = settings.video_embed %}
{% set has_instafeed = store.instagram and settings.show_instafeed and store.hasInstagramToken() %}
{% set has_promotional_banners = settings.banner_promotional_01_show or settings.banner_promotional_02_show or settings.banner_promotional_03_show %}

{% set show_help = not (has_main_slider or has_mobile_slider or has_informative_banners or has_category_banners or has_brands or has_video or has_instafeed or has_promotional_banners) and not has_products %}

{# **** This will show default products in the home page before you upload some products **** #}
{% if show_help %}
    {% snipplet 'defaults/show_help.tpl' %}
{% else %}

	{# END of show default products in the home page #}
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	{#  **** Home slider ****  #}
	
	<section data-store="slider-main">
		{% include 'snipplets/home/home-slider.tpl' %}
		{% if has_mobile_slider %}
			{% include 'snipplets/home/home-slider.tpl' with {mobile: true} %}
		{% endif %}
	</section>


	{#  **** Features Order ****  #}
	{% set newArray = [] %}

	{% for section in ['home_order_position_1', 'home_order_position_2', 'home_order_position_3', 'home_order_position_4', 'home_order_position_5', 'home_order_position_6', 'home_order_position_7', 'home_order_position_8', 'home_order_position_9',  'home_order_position_10'] %}
	    {% set section_select = attribute(settings,"#{section}") %}

	    {% if section_select not in newArray %}

		    {% if section_select == 'products' %}

		        {#  **** Featured products ****  #}
				{% include 'snipplets/home/home-featured-products.tpl' with {'has_featured': true} %}
				

		    {% elseif section_select == 'informatives' %}

		    	{#  **** Informative banners ****  #}
				{% include 'snipplets/banner-services/banner-services.tpl' %}
		    
			{% elseif section_select == 'artigos_home' %}

		    	{#  **** Informative banners ****  #}
				{% include 'snipplets/banner-services/banner-artigos.tpl' %}
				

		    {% elseif section_select == 'categories' %}

		    	{#  **** Categories banners ****  #}
				{% include 'snipplets/home/home-banners.tpl' with {'textoverimage': false} %}

			{% elseif section_select == 'welcome' %}
				{% include 'snipplets/home/home-banner-sessao-1.tpl' %}
				{#  **** Welcome message ****  #}
				
				{% elseif section_select == 'imagem_texto' %}
				
				{#  **** Welcome message ****  #}
				{% include 'snipplets/home/home-banner-sessao-2.tpl' %}
				
				

			{% elseif section_select == 'brands' %}

				{#  **** Welcome message ****  #}
				{% include 'snipplets/home/home-brands.tpl' %}

			{% elseif section_select == 'new' %}

		        {#  **** New products ****  #}
				{% include 'snipplets/home/home-featured-products.tpl' with {'has_new': true} %}

			{% elseif section_select == 'video' %}

				{#  **** Video embed ****  #}
				{% include 'snipplets/home/home-video.tpl' %}
				
			{% elseif section_select == 'lista_categorias' %}

				{#  **** Lista Catgorias ****  #}
				{% include 'snipplets/home/home-lista-categorias.tpl' %}
			
			{% elseif section_select == 'sale' %}

		        {#  **** Sale products ****  #}
				{% include 'snipplets/home/home-featured-products.tpl' with {'has_sale': true} %}

			{% elseif section_select == 'instafeed' %}

				{#  **** Instafeed ****  #}
				{% include 'snipplets/home/home-instafeed.tpl' %}
			
			{% elseif section_select == 'lista_categorias_2' %}

				{#  **** Lista Catgorias ****  #}
				{% include 'snipplets/home/home-lista-categorias-2.tpl' %}

				{#  **** Estampas ****  #}
				{% include 'snipplets/home/home-estampas.tpl' %}
				

			{% elseif section_select == 'promotional' %}

				{#  **** Promotional banners ****  #}
				{% include 'snipplets/home/home-promotional.tpl' with {'textoverimage': true} %}

			{% elseif section_select == 'newsletter' %}

				{#  **** Newsletter ****  #}
				{% include 'snipplets/newsletter.tpl' %}

		    {% endif %}
	   {% set newArray = newArray|merge([section_select]) %}
	   
	   {% endif %}

	{% endfor %}

	{% if settings.home_promotional_popup %}
		
	{% endif %}


	<div class="newsletter-mt" style="display: none;">
		<div id="mc_embed_shell">
			<button class="fechar-newsletter-mt">X</button>
			<div id="mc_embed_signup">
					<form
							action="https://gmail.us8.list-manage.com/subscribe/post?u=da80100a464c7262543f3019f&amp;id=528f1e3140&amp;f_id=008866e0f0"
							method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate"
							target="_blank">
							<div id="mc_embed_signup_scroll">
									<h2>Inscreva-se e fique sabendo das novidades!</h2>
									<div class="indicates-required"><span class="asterisk">*</span> indicates required</div>
									<div class="mc-field-group"><label for="mce-EMAIL">Email Address <span
															class="asterisk">*</span></label><input type="email" name="EMAIL" class="required email"
													id="mce-EMAIL" value="" required=""></div>
									<div class="mc-field-group"><label for="mce-FNAME">Nome </label><input type="text" name="FNAME"
													class=" text" id="mce-FNAME" value=""></div>
									<div class="mc-field-group size1of2"><label for="mce-MMERGE5-month">Aniversário </label>
											<div class="datefield"><span class="subfield dayfield"><input class="birthday REQ_CSS" type="text"
																	pattern="[0-9]*" placeholder="DD" size="2" maxlength="2" name="MMERGE5[day]"
																	id="mce-MMERGE5-day" value=""></span> /<span class="subfield monthfield"><input
																	class="birthday REQ_CSS" type="text" pattern="[0-9]*" placeholder="MM" size="2"
																	maxlength="2" name="MMERGE5[month]" id="mce-MMERGE5-month" value=""></span><span
															class="small-meta nowrap">( dd / mm )</span></div>
									</div>
									<div hidden=""><input type="hidden" name="tags" value="4870695,4870707,4870699"></div>
									<div id="mce-responses" class="clearfalse">
											<div class="response" id="mce-error-response" style="display: none;"></div>
											<div class="response" id="mce-success-response" style="display: none;"></div>
									</div>
									<div aria-hidden="true" style="position: absolute; left: -5000px;"><input type="text"
													name="b_da80100a464c7262543f3019f_528f1e3140" tabindex="-1" value=""></div>
									<div class="clear"><input type="submit" name="subscribe" id="mc-embedded-subscribe" class="button"
													value="Subscribe"></div>
							</div>
					</form>
			</div>
	
			<script type="text/javascript" src="//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js"></script>
			<script type="text/javascript">
					(function ($) {
							window.fnames = new Array();
							window.ftypes = new Array();
							fnames[0] = EMAIL;
							ftypes[0] = merge;, fnames[1] = FNAME;
							ftypes[1] = merge;, fnames[5] = MMERGE5;
							ftypes[5] = merge;, fnames[2] = LNAME;
							ftypes[2] = merge;, fnames[3] = ADDRESS;
							ftypes[3] = merge;, fnames[4] = PHONE;
							ftypes[4] = merge;
					}(jQuery));
					var $mcj = jQuery.noConflict(true);
			</script>
	</div>
	</div>

{% endif %}


