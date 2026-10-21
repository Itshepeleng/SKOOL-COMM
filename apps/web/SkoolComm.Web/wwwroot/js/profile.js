/* =========================================================
   Profile page: edit the email address
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const view = document.getElementById("profView");
    if (!view) return;

    const editBtn = document.getElementById("profEdit");
    const editBox = document.getElementById("profEditBox");
    const input = document.getElementById("profInput");
    const saveBtn = document.getElementById("profSave");
    const cancelBtn = document.getElementById("profCancel");
    const toast = document.getElementById("profToast");

    let email = view.dataset.email;

    function openEdit() {
        input.value = email;
        saveBtn.disabled = true;
        view.classList.add("hidden");
        editBtn.classList.add("hidden");
        editBox.classList.remove("hidden");
        input.focus();
    }

    function closeEdit() {
        view.classList.remove("hidden");
        editBtn.classList.remove("hidden");
        editBox.classList.add("hidden");
    }

    editBtn.addEventListener("click", openEdit);
    cancelBtn.addEventListener("click", closeEdit);

    // Save is only active when the email is filled in and has changed
    input.addEventListener("input", function () {
        const value = input.value.trim();
        saveBtn.disabled = !value || value === email;
    });

    saveBtn.addEventListener("click", function () {
        email = input.value.trim();
        view.textContent = email;
        closeEdit();

        toast.classList.remove("hidden");
        setTimeout(function () { toast.classList.add("hidden"); }, 3000);
    });
});