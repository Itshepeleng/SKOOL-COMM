document.addEventListener("DOMContentLoaded", function () {
    const loginForm = document.getElementById("loginForm");
    if (!loginForm) return;

    const roleButtons = document.querySelectorAll(".role-button");
    const roleInput = document.getElementById("roleInput");
    const emailInput = document.getElementById("email");
    const passwordInput = document.getElementById("password");
    const loginMessage = document.getElementById("loginMessage");
    const togglePassword = document.getElementById("togglePassword");
    const eyeSlash = document.getElementById("passwordEyeSlash");

    roleButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            roleButtons.forEach(function (item) {
                item.classList.remove("active");
            });

            button.classList.add("active");
            roleInput.value = button.dataset.role;
        });
    });

    if (togglePassword && passwordInput && eyeSlash) {
        togglePassword.addEventListener("click", function () {
            const showPassword = passwordInput.type === "password";

            passwordInput.type = showPassword ? "text" : "password";
            togglePassword.setAttribute("aria-pressed", String(showPassword));
            togglePassword.setAttribute(
                "aria-label",
                showPassword ? "Hide password" : "Show password"
            );
            eyeSlash.style.display = showPassword ? "none" : "block";
        });
    }

    loginForm.addEventListener("submit", function (event) {
        if (!emailInput.value.trim() || !passwordInput.value) {
            event.preventDefault();
            loginMessage.textContent = "Please enter your email and password.";
            loginMessage.className = "login-message show error";
        }
    });
});