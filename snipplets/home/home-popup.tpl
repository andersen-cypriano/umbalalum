{% embed "snipplets/modal.tpl" with{modal_id: 'home-modal', modal_position: 'bottom', modal_transition: 'slide', modal_header: false, modal_footer: false, modal_width: 'centered', modal_class: 'centered-small bg-primary', modal_close_class: 'invert'  } %}

{% block modal_body %}
<div id="mc_embed_shell">

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



    {% endblock %}
    {% endembed %}


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