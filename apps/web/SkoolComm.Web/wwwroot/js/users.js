/* =========================================================
   Users page (administrators)
   - Parents / Staff tabs
   - Staff search, Add and Edit form (posts to UsersController.SaveStaff)
   - Deactivate / Activate with a confirm dialog
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const page = document.getElementById("usersPage");
    if (!page) return;

    const toast = document.getElementById("usrToast");
    const tabs = document.querySelectorAll(".tab[data-tab]");
    const panelStaff = document.getElementById("panel-staff");
    const panelParents = document.getElementById("panel-parents");
    const tools = document.getElementById("staffTools");
    const search = document.getElementById("usrSearch");
    const rows = Array.from(document.querySelectorAll(".staff-row"));

    const form = document.getElementById("staffForm");
    const formTitle = document.getElementById("staffFormTitle");
    const idInput = document.getElementById("stId");
    const firstInput = document.getElementById("stFirst");
    const lastInput = document.getElementById("stLast");
    const emailInput = document.getElementById("stEmail");
    const roleSelect = document.getElementById("stRole");
    const note = document.getElementById("stNote");
    const saveBtn = document.getElementById("stSave");


    /* ---------- Helpers ---------- */

    function el(tag, className, text) {
        const node = document.createElement(tag);
        if (className) node.className = className;
        if (text !== undefined) node.textContent = text;
        return node;
    }

    // Fade out a message the server rendered
    if (!toast.classList.contains("hidden")) {
        setTimeout(function () { toast.classList.add("hidden"); }, 7000);
    }


    /* ---------- Tabs ---------- */

    function setTab(name) {
        const staff = name === "staff";
        tabs.forEach(function (t) { t.classList.toggle("active", t.dataset.tab === name); });
        panelStaff.classList.toggle("hidden", !staff);
        panelParents.classList.toggle("hidden", staff);
        tools.classList.toggle("hidden", !staff);
    }

    tabs.forEach(function (t) {
        t.addEventListener("click", function () { setTab(t.dataset.tab); });
    });


    /* ---------- Search ---------- */

    search.addEventListener("input", function () {
        const text = search.value.trim().toLowerCase();
        rows.forEach(function (row) {
            row.classList.toggle("hidden", !row.dataset.search.includes(text));
        });
    });


    /* ---------- Add / Edit form ---------- */

    function updateSave() {
        saveBtn.disabled = !(
            firstInput.value.trim() &&
            lastInput.value.trim() &&
            emailInput.value.trim()
        );
    }

    function openForm(data) {
        if (data) {
            formTitle.textContent = "Edit Staff Member";
            saveBtn.textContent = "Update User";
            idInput.value = data.id;
            firstInput.value = data.first;
            lastInput.value = data.last;
            emailInput.value = data.email;
            roleSelect.value = data.role;
            note.textContent = "Changing the email here does not change the email they log in with.";
        } else {
            formTitle.textContent = "Add New Staff Member";
            saveBtn.textContent = "Add User";
            idInput.value = "";
            firstInput.value = "";
            lastInput.value = "";
            emailInput.value = "";
            roleSelect.value = "teacher";
            note.textContent = "After adding, create their login in Supabase (Authentication, Add user) with the same email.";
        }

        form.classList.remove("hidden");
        updateSave();
        form.scrollIntoView({ behavior: "smooth", block: "nearest" });
        firstInput.focus();
    }

    function closeForm() {
        form.classList.add("hidden");
    }

    document.getElementById("usrAdd").addEventListener("click", function () { openForm(null); });
    document.getElementById("stCancel").addEventListener("click", closeForm);

    [firstInput, lastInput, emailInput].forEach(function (input) {
        input.addEventListener("input", updateSave);
    });

    document.querySelectorAll(".edit-btn").forEach(function (btn) {
        btn.addEventListener("click", function () {
            openForm({
                id: btn.dataset.id,
                first: btn.dataset.first,
                last: btn.dataset.last,
                email: btn.dataset.email,
                role: btn.dataset.role
            });
        });
    });


    /* ---------- Deactivate / Activate ---------- */

    function confirmStatus(id, name, isActive) {
        const deactivating = isActive;
        const colour = deactivating ? "#dc2626" : "#1a5c2e";
        const backdrop = el("div", "dialog-backdrop");

        backdrop.innerHTML =
            '<div class="dialog">' +
            '<div class="dialog-icon ' + (deactivating ? "danger" : "primary") + '">' +
            '<svg width="24" height="24" viewBox="0 0 24 24" fill="none">' +
            '<circle cx="12" cy="12" r="9" stroke="' + colour + '" stroke-width="2" fill="none"/>' +
            '<path d="M12 8v4M12 16h.01" stroke="' + colour + '" stroke-width="2" stroke-linecap="round"/>' +
            '</svg></div>' +
            '<h2></h2><p></p>' +
            '<div class="dialog-actions">' +
            '<button type="button" class="btn btn-outline" data-act="cancel">Cancel</button>' +
            '<button type="button" class="btn ' + (deactivating ? "btn-danger" : "btn-primary") + '" data-act="confirm"></button>' +
            '</div></div>';

        backdrop.querySelector("h2").textContent = deactivating ? "Deactivate User" : "Reactivate User";
        backdrop.querySelector("p").textContent = deactivating
            ? "Are you sure you want to deactivate " + name + "? They will no longer be able to log in."
            : "Are you sure you want to reactivate " + name + "? They will regain access to the system.";
        backdrop.querySelector('[data-act="confirm"]').textContent = deactivating ? "Deactivate" : "Reactivate";

        document.body.appendChild(backdrop);

        function close() { backdrop.remove(); }

        backdrop.addEventListener("click", function (e) { if (e.target === backdrop) close(); });
        backdrop.querySelector('[data-act="cancel"]').addEventListener("click", close);

        backdrop.querySelector('[data-act="confirm"]').addEventListener("click", function () {
            document.getElementById("stsId").value = id;
            document.getElementById("stsActive").value = deactivating ? "false" : "true";
            document.getElementById("statusForm").submit();
        });
    }

    document.querySelectorAll(".status-toggle").forEach(function (btn) {
        btn.addEventListener("click", function () {
            confirmStatus(btn.dataset.id, btn.dataset.name, btn.dataset.active === "true");
        });
    });


    setTab("staff");
});