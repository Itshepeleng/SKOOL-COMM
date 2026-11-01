document.addEventListener("DOMContentLoaded", function () {
    const page = document.getElementById("codesPage");
    if (!page) return;

    const rows = Array.from(document.querySelectorAll(".code-row"));

    document.getElementById("codeSearch").addEventListener("input", function (e) {
        const text = e.target.value.trim().toLowerCase();
        rows.forEach(function (r) { r.classList.toggle("hidden", !r.dataset.search.includes(text)); });
    });

    document.querySelectorAll(".copy-btn").forEach(function (btn) {
        btn.addEventListener("click", function () {
            navigator.clipboard.writeText(btn.dataset.code);
            btn.textContent = "Copied";
            setTimeout(function () { btn.textContent = "Copy"; }, 1500);
        });
    });

    function submit(id, replace) {
        document.getElementById("genId").value = id;
        document.getElementById("genReplace").value = replace ? "true" : "false";
        document.getElementById("genForm").submit();
    }

    function confirmReplace(id, name) {
        const backdrop = document.createElement("div");
        backdrop.className = "dialog-backdrop";
        backdrop.innerHTML =
            '<div class="dialog"><div class="dialog-icon danger">' +
            '<svg width="24" height="24" viewBox="0 0 24 24" fill="none"><circle cx="12" cy="12" r="9" stroke="#dc2626" stroke-width="2" fill="none"/><path d="M12 8v4M12 16h.01" stroke="#dc2626" stroke-width="2" stroke-linecap="round"/></svg></div>' +
            '<h2>Replace code</h2><p></p>' +
            '<div class="dialog-actions"><button type="button" class="btn btn-outline" data-act="no">Cancel</button>' +
            '<button type="button" class="btn btn-danger" data-act="yes">Replace</button></div></div>';
        backdrop.querySelector("p").textContent =
            "Replace the code for " + name + "? The old code stops working, and the new one starts at 0 uses.";
        document.body.appendChild(backdrop);
        backdrop.addEventListener("click", function (e) { if (e.target === backdrop) backdrop.remove(); });
        backdrop.querySelector('[data-act="no"]').addEventListener("click", function () { backdrop.remove(); });
        backdrop.querySelector('[data-act="yes"]').addEventListener("click", function () { submit(id, true); });
    }

    document.querySelectorAll(".gen-btn").forEach(function (btn) {
        btn.addEventListener("click", function () {
            if (btn.dataset.replace === "true") confirmReplace(btn.dataset.id, btn.dataset.name);
            else submit(btn.dataset.id, false);
        });
    });
});