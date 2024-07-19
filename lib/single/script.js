$(document).ready(function submit() {
    $("#submit-form").validate({
        rules: {
            name: {
                required: true,
                minlength: 4
            },
            email: {
                required: true,
                email: true
            },
            phone: {
                required: true,
                number: true,
                minlength: 10,
                maxlength: 10
            },
        },
        messages: {
            name: {
                required: "Enter the name",
                minlength: "Enter at least four character"
            },
            email: {
                required: "Enter the email id",
                email: "Missing @"
            },
            phone: {
                required: "Enter the contact number",
                minlength: "minimum 10 Numbers",
                intRegex: "Enter a valid number"
            },
        }
    })
})