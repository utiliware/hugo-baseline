---
title: "Contact"
---
<h2>Contact Us</h2>
<p class="errors">Please fill in all fields.</p>
<form action="https://dp0vzm19pe.execute-api.us-east-1.amazonaws.com/prod/api" method="POST" id="contact-us-form">
    <div class="form-group">
        <label for="nameInputEmail1">Name</label>
        <input type="text" class="form-control" id="nameInputEmail1" name="name" placeholder="Full name">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" name="email"
               placeholder="Enter email">
    </div>
    <div class="form-group">
        <label for="phoneInputEmail1">Phone number</label>
        <input type="text" class="form-control" id="phoneInputEmail1" name="phone"
               placeholder="Enter phone">
    </div>
    <div class="form-group">
        <label for="messageInputEmail1">Message</label>
        <textarea type="textarea" class="form-control" id="messageInputEmail1" name="message"
                  placeholder="Enter message"></textarea>
    </div>
    <p class="thanks">Thanks!  We'll contact you soon.</p>
    <p class="sending">Sending...</p>
    <button type="submit" class="btn btn-primary g-recaptcha"
            data-sitekey="6LdwnVcUAAAAAActXhnat_UC4s3SNeDiTN7FEqEa"
            data-callback="onContctUsSubmit" data-badge="inline" >Submit</button>
</form>

<script src='https://www.google.com/recaptcha/api.js' async defer></script>
<script>
    var onContctUsSubmit = function () {
        $(document).ready(function () {
            $(".thanks").hide();
            $(".sending").hide();
            $(".errors").hide();
            if ($("#contact-us-form input[name='name']").val() === "" ||
                $("#contact-us-form input[name='email']").val() === "") {
                $(".errors").show();
                $("#contact-us-form button").show();
            } else {
                $(".errors").hide();
                $.post($("#contact-us-form").attr('action'), JSON.stringify({
                    name: $("#contact-us-form input[name='name']").val(),
                    email: $("#contact-us-form input[name='email']").val(),
                    phone: $("#contact-us-form input[name='phone']").val(),
                    message: $("#contact-us-form textarea[name='message']").val(),
                    'g-recaptcha-response': $("#contact-us-form textarea[name='g-recaptcha-response']").val()
                }), function (data) {
                    $(".thanks").show();
                    $("#contact-us-form button").hide();
                    $("#contact-us-form input[name='name']").val('');
                    $("#contact-us-form input[name='email']").val('');
                    $("#contact-us-form input[name='phone']").val('');
                    $("#contact-us-form textarea[name='message']").val('');
                }, 'json');
            }
        });
    };
$(document).ready(function () {
        $("#contact-us-form button").click(function(event) {
            $(".sending").show();
            $("#contact-us-form button").hide();
        });
    });
</script>