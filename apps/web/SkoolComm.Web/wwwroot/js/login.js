/* =========================================================
   SKOOL-COMM LOGIN
   Role selection + form validation
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const loginForm = document.getElementById("loginForm");

    // This page is not the login page
    if (!loginForm) {
        return;
    }

    const roleButtons =
        document.querySelectorAll(".role-button");

    const roleInput =
        document.getElementById("roleInput");

    const usernameInput =
        document.getElementById("username");

    const passwordInput =
        document.getElementById("password");

    const loginMessage =
        document.getElementById("loginMessage");


    /* =====================================================
       ROLE SELECTION
       ===================================================== */

    roleButtons.forEach(function (button) {

        button.addEventListener("click", function () {

            // Remove active state from all buttons
            roleButtons.forEach(function (item) {
                item.classList.remove("active");
            });

            // Activate clicked button
            button.classList.add("active");

            // Send selected role to AccountController
            roleInput.value = button.dataset.role;

        });

    });


    /* =====================================================
       FORM SUBMISSION
       ===================================================== */

    loginForm.addEventListener("submit", function (event) {

        const username =
            usernameInput.value.trim();

        const password =
            passwordInput.value.trim();


        // Only stop submission if fields are empty
        if (!username || !password) {

            event.preventDefault();

            loginMessage.textContent =
                "Please enter your username and password.";

            loginMessage.className =
                "login-message show error";

            return;
        }

        /*
         * IMPORTANT:
         * Do NOT use event.preventDefault() here.
         *
         * The form must continue to:
         *
         * POST /Account/Login
         *
         * AccountController will check:
         * username + password + role
         */

    });

});