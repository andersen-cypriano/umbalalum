<section class="container mb-4 text-center account-page-breadcrumbs">
	<div class="row">
		<div class="col-12">
			{% include "snipplets/breadcrumbs.tpl" %}
		</div>
	</div>
</section>

{% embed "snipplets/page-header.tpl" %}
	{% block page_header_text %}{{ 'Crear cuenta' | translate }}{% endblock page_header_text %}
{% endembed %}

<!--<p class="text-center mb-4 px-4"> {{ 'Comprá más rápido y llevá el control de tus pedidos, ¡en un solo lugar!'| translate }} </p>-->

{# Account Validation #}
{% if account_validation == 'pending' %}
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 col-lg-4">
				<div class="js-account-validation-pending alert alert-primary p-3 mb-4">
					{% include "snipplets/svg/email.tpl" with {svg_custom_class: "icon-inline icon-2x svg-icon-primary"} %}
					<h5 class="my-3">{{ "¡Estás a un paso de crear tu cuenta!" | translate }}</h5>
					<p class="mb-0 mt-0 mt-2 font-small">{{ "Te enviamos un link a <strong>{1}</strong> para que valides tu email." | t(customer_email) }} </p>
				</div>
				<div class="text-center mb-3 font-small">
					<p>{{ "¿Todavía no lo recibiste?" | translate }} <span class="js-resend-validation-link btn-link btn-link-primary">{{ "Enviar link de nuevo" | translate }}</span></p>
				</div>
				<div class="js-resend-validation-success alert alert-success" style="display:none">
					<p class="m-1">{{ "¡El link fue enviado correctamente!" | translate }}</p>
				</div>
				<div class="js-resend-validation-error alert alert-danger" style="display:none">
					<p class="m-1">{{ "No pudimos enviar el email, intentalo de nuevo en unos minutos." | translate }}</p>
				</div>
			</div>
		</div>
	</div>
	
{% else %}

	{# Register Form #}

	<section class="account-page">
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col-md-8">

					{% embed "snipplets/forms/form.tpl" with{form_id: 'login-form', submit_custom_class: 'js-recaptcha-button btn-block', submit_prop: 'disabled', submit_text: 'Cadastrar' | translate, data_store: 'account-register' } %}
						{% block form_body %}

							{# Facebook login #}

							{% include 'snipplets/facebook-login.tpl' %}

							{# Name input #}
							
							{% embed "snipplets/forms/form-input.tpl" with{type_text: true, input_for: 'name', input_value: result.name, input_name: 'name', input_id: 'name', input_placeholder: 'Nome completo' | translate} %}
								{% block input_form_alert %}
									{% if result.errors.name %}
						                <div class="notification-danger notification-left">{{ 'Usamos tu nombre para identificar tus pedidos.' | translate }}</div>
						            {% endif %}
								{% endblock input_form_alert %}
							{% endembed %}

							{# Email input #}

							{% embed "snipplets/forms/form-input.tpl" with{type_email: true, input_for: 'email', input_value: result.email, input_name: 'email', input_id: 'email', input_placeholder: 'E-mail'} %}
								{% block input_form_alert %}
									{% if result.errors.email == 'exists' %}
						                <div class="notification-danger notification-left">{{ 'Encontramos otra cuenta que ya usa este email. Intentá usando otro o iniciá sesión.' | translate }}</div>
						            {% elseif result.errors.email %}
						                <div class="notification-danger notification-left">{{ 'Necesitamos un email válido para crear tu cuenta.' | translate }}</div>
						            {% endif %}
								{% endblock input_form_alert %}
							{% endembed %}

							{# Phone input #}

							{% embed "snipplets/forms/form-input.tpl" with{type_tel: true, input_for: 'phone', input_value: result.phone, input_name: 'phone', input_id: 'phone', input_placeholder: 'Teléfono (opcional)' | translate} %}
							{% endembed %}

							{# Password input #}

							{% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password', input_name: 'password', input_id: 'password', input_placeholder: 'Contraseña' | translate} %}
								{% block input_form_alert %}
									{% if result.errors.password == 'required' %}
						                <div class="notification-danger notification-left">{{ 'Necesitamos una contraseña para registrarte.' | translate }}</div>
						            {% endif %}
								{% endblock input_form_alert %}
							{% endembed %}

							{# Password confirm input #}

							{% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password_confirmation', input_name: 'password_confirmation', input_id: 'password_confirmation', input_placeholder: 'Confirmar contraseña' | translate} %}
								{% block input_form_alert %}
									{% if result.errors.password == 'confirmation' %}
						                <div class="notification-danger notification-left">{{ 'Las contraseñas no coinciden.' | translate }}</div>
						            {% endif %}
								{% endblock input_form_alert %}
							{% endembed %}

							{# Google reCAPTCHA #}

							<div class="g-recaptcha" data-sitekey="{{recaptchaSiteKey}}" data-callback="recaptchaCallback"></div>
							
						{% endblock %}
					{% endembed %}
				</div>
			</div>
			<p class="mt-3 text-center">{{ '¿Ya tenés una cuenta?' | translate }} {{ "Entrar" | translate | a_tag(store.customer_login_url, '', 'btn-link-primary') }}</p>
		</div>
	</section>
{% endif %}