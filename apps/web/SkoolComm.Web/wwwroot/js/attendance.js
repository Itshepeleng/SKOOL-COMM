/* =========================================================
   Attendance page (real data from Supabase)
   - Shows only the selected class
   - Present / Absent / Late buttons, All Present, Clear
   - Changing the date reloads that day's saved marks
   - Confirm dialog, then the form posts to AttendanceController.Save
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const page = document.getElementById("attPage");
    if (!page) return;

    const rows = Array.from(document.querySelectorAll(".att-row"));
    const classSelect = document.getElementById("classSelect");
    const dateInput = document.getElementById("attDate");
    const toast = document.getElementById("attToast");
    const toastText = document.getElementById("attToastText");


    /* ---------- Helpers ---------- */

    function visibleRows() {
        return rows.filter(function (r) { return !r.classList.contains("hidden"); });
    }

    function showToast(message, type) {
        toastText.textContent = message;
        toast.className = "toast " + (type || "success");
        setTimeout(function () { toast.classList.add("hidden"); }, 4000);
    }

    // Fade out a message that the server rendered
    if (!toast.classList.contains("hidden")) {
        setTimeout(function () { toast.classList.add("hidden"); }, 5000);
    }

    function formatDate(value) {
        return new Date(value + "T00:00:00").toLocaleDateString("en-ZA", {
            day: "numeric", month: "long", year: "numeric"
        });
    }


    /* ---------- Counts ---------- */

    function updateCounts() {
        let present = 0, absent = 0, late = 0;
        const list = visibleRows();

        list.forEach(function (row) {
            if (row.dataset.status === "present") present++;
            if (row.dataset.status === "absent") absent++;
            if (row.dataset.status === "late") late++;
        });

        document.getElementById("countPresent").textContent = present;
        document.getElementById("countAbsent").textContent = absent;
        document.getElementById("countLate").textContent = late;
        document.getElementById("countNotMarked").textContent =
            list.length - present - absent - late;

        return { present: present, absent: absent, late: late };
    }


    /* ---------- Show only the selected class ---------- */

    function applyClassFilter() {
        rows.forEach(function (row) {
            row.classList.toggle("hidden", row.dataset.class !== classSelect.value);
        });

        // Number the visible rows 1, 2, 3...
        visibleRows().forEach(function (row, i) {
            row.querySelector(".row-num").textContent = i + 1;
        });

        updateCounts();
    }

    classSelect.addEventListener("change", applyClassFilter);


    /* ---------- Date change: reload that day's saved marks ---------- */

    dateInput.addEventListener("change", function () {
        if (!dateInput.value) return;

        window.location.href = page.dataset.url +
            "?date=" + encodeURIComponent(dateInput.value) +
            "&cls=" + encodeURIComponent(classSelect.value);
    });


    /* ---------- Set one row's status ---------- */

    function setRowStatus(row, status) {
        row.dataset.status = status;
        row.querySelectorAll(".status-btn").forEach(function (btn) {
            btn.classList.toggle("selected", btn.dataset.status === status);
        });
    }

    rows.forEach(function (row) {
        row.querySelectorAll(".status-btn").forEach(function (btn) {
            btn.addEventListener("click", function () {
                const clicked = btn.dataset.status;

                // Clicking the selected button again un-marks the learner
                setRowStatus(row, row.dataset.status === clicked ? "" : clicked);
                updateCounts();
            });
        });
    });


    /* ---------- All Present / Clear / Cancel ---------- */

    function markAll(status) {
        visibleRows().forEach(function (row) { setRowStatus(row, status); });
        updateCounts();
    }

    document.getElementById("markAllPresent")
        .addEventListener("click", function () { markAll("present"); });

    document.getElementById("clearAll")
        .addEventListener("click", function () { markAll(""); });

    // Cancel throws away unsaved changes by reloading the saved marks
    document.getElementById("cancelAtt")
        .addEventListener("click", function () { window.location.reload(); });


    /* ---------- Confirm dialog ---------- */

    function openConfirm(counts) {
        const backdrop = document.createElement("div");
        backdrop.className = "dialog-backdrop";

        backdrop.innerHTML =
            '<div class="dialog">' +
            '<div class="dialog-icon primary">' +
            '<svg width="24" height="24" viewBox="0 0 24 24" fill="none">' +
            '<circle cx="12" cy="12" r="9" stroke="#1a5c2e" stroke-width="2" fill="none"/>' +
            '<path d="M12 8v4M12 16h.01" stroke="#1a5c2e" stroke-width="2" stroke-linecap="round"/>' +
            '</svg></div>' +
            '<h2>Save Attendance</h2>' +
            '<p id="dlgText"></p>' +
            '<div class="dialog-actions">' +
            '<button type="button" class="btn btn-outline" data-act="cancel">Cancel</button>' +
            '<button type="button" class="btn btn-primary" data-act="confirm">Save Attendance</button>' +
            '</div></div>';

        backdrop.querySelector("#dlgText").textContent =
            "Save attendance for " + classSelect.value + " on " + formatDate(dateInput.value) +
            "? Present: " + counts.present + ", Absent: " + counts.absent +
            ", Late: " + counts.late + ".";

        document.body.appendChild(backdrop);

        function close() { backdrop.remove(); }

        backdrop.addEventListener("click", function (e) {
            if (e.target === backdrop) close();
        });

        backdrop.querySelector('[data-act="cancel"]')
            .addEventListener("click", close);

        backdrop.querySelector('[data-act="confirm"]')
            .addEventListener("click", function () {
                close();
                submitForm();
            });
    }


    /* ---------- Save ---------- */

    function submitForm() {
        // Only the marked learners of the selected class are sent
        const entries = visibleRows()
            .filter(function (row) { return row.dataset.status !== ""; })
            .map(function (row) {
                return {
                    learnerId: Number(row.dataset.learnerId),
                    status: row.dataset.status
                };
            });

        document.getElementById("formDate").value = dateInput.value;
        document.getElementById("formClass").value = classSelect.value;
        document.getElementById("formEntries").value = JSON.stringify(entries);

        document.getElementById("attForm").submit();
    }

    document.getElementById("saveAtt").addEventListener("click", function () {

        if (!dateInput.value) {
            showToast("Please select a date first.", "error");
            return;
        }

        const counts = updateCounts();

        if (counts.present + counts.absent + counts.late === 0) {
            showToast("Mark at least one learner before saving.", "error");
            return;
        }

        openConfirm(counts);
    });


    applyClassFilter();
});