/* =========================================================
   Events & Year Plan (real data from Supabase)
   - List and Calendar views
   - Add / Edit form (posts to EventsController.Save)
   - Delete with a confirm dialog (posts to EventsController.Delete)
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const root = document.getElementById("eventsPage");
    if (!root) return;

    const items = JSON.parse(root.dataset.events);
    const kindLabels = { event: "Event", yearplan: "Year Plan" };

    const now = new Date();
    let calYear = now.getFullYear();
    let calMonth = now.getMonth();

    // After a save the server tells us which month to show ("2026-10")
    const startMonth = root.dataset.month;
    if (startMonth && /^\d{4}-\d{2}$/.test(startMonth)) {
        calYear = Number(startMonth.substring(0, 4));
        calMonth = Number(startMonth.substring(5, 7)) - 1;
    }

    const toast = document.getElementById("evToast");
    const tabList = document.getElementById("tabList");
    const tabCalendar = document.getElementById("tabCalendar");
    const listView = document.getElementById("listView");
    const calendarView = document.getElementById("calendarView");
    const eventRows = document.getElementById("eventRows");
    const calTitle = document.getElementById("calTitle");
    const calGrid = document.getElementById("calGrid");

    const form = document.getElementById("eventForm");
    const formTitle = document.getElementById("formTitle");
    const idInput = document.getElementById("evId");
    const kindHidden = document.getElementById("evKindHidden");
    const kindSelect = document.getElementById("evKind");
    const titleInput = document.getElementById("evTitle");
    const descInput = document.getElementById("evDescription");
    const dateInput = document.getElementById("evDate");
    const dateLabel = document.getElementById("evDateLabel");
    const timeInput = document.getElementById("evTime");
    const endInput = document.getElementById("evEnd");
    const locationInput = document.getElementById("evLocation");
    const timeGroup = document.getElementById("evTimeGroup");
    const endGroup = document.getElementById("evEndGroup");
    const locationGroup = document.getElementById("evLocationGroup");
    const saveBtn = document.getElementById("evSave");


    /* ---------- Helpers ---------- */

    function el(tag, className, text) {
        const node = document.createElement(tag);
        if (className) node.className = className;
        if (text !== undefined) node.textContent = text;
        return node;
    }

    function parseDate(value) {
        const p = value.split("-");
        return new Date(Number(p[0]), Number(p[1]) - 1, Number(p[2]));
    }

    function formatDate(value) {
        return parseDate(value).toLocaleDateString("en-ZA", {
            day: "numeric", month: "short", year: "numeric"
        });
    }

    function dateKey(year, month, day) {
        return year + "-" + String(month + 1).padStart(2, "0") + "-" + String(day).padStart(2, "0");
    }

    function dateText(it) {
        if (it.kind === "yearplan" && it.endDate !== it.date) {
            return formatDate(it.date) + " – " + formatDate(it.endDate);
        }
        let text = formatDate(it.date);
        if (it.kind === "event" && it.time && it.time !== "00:00") text += ", " + it.time;
        return text;
    }

    // Fade out a message the server rendered
    if (!toast.classList.contains("hidden")) {
        setTimeout(function () { toast.classList.add("hidden"); }, 5000);
    }


    /* ---------- List view ---------- */

    function renderList() {
        eventRows.innerHTML = "";

        const sorted = items.slice().sort(function (a, b) {
            return (a.date + (a.time || "")).localeCompare(b.date + (b.time || ""));
        });

        if (sorted.length === 0) {
            const tr = el("tr");
            const td = el("td", "center faint", "Nothing here yet. Click + Add to create an event.");
            td.colSpan = 4;
            tr.appendChild(td);
            eventRows.appendChild(tr);
            return;
        }

        sorted.forEach(function (it) {
            const tr = el("tr");

            const tdDate = el("td", null, dateText(it));
            tdDate.style.cssText = "font-weight:600;white-space:nowrap;";
            tr.appendChild(tdDate);

            const tdTitle = el("td");
            const wrap = el("div", "row gap-2");
            wrap.appendChild(el("span", "dot dot-" + it.kind));
            const text = el("div");
            const t = el("div", null, it.title);
            t.style.fontWeight = "600";
            text.appendChild(t);

            let sub = it.description;
            if (it.location) sub += (sub ? " · " : "") + it.location;
            text.appendChild(el("div", "small faint", sub));

            wrap.appendChild(text);
            tdTitle.appendChild(wrap);
            tr.appendChild(tdTitle);

            const tdKind = el("td");
            tdKind.appendChild(el("span", "badge type-" + it.kind, kindLabels[it.kind]));
            tr.appendChild(tdKind);

            const tdAct = el("td");
            const act = el("div", "row gap-3");
            act.style.justifyContent = "flex-end";

            const editBtn = el("button", "link-btn", "Edit");
            editBtn.type = "button";
            editBtn.addEventListener("click", function () { openForm(it); });

            const delBtn = el("button", "link-btn danger", "Delete");
            delBtn.type = "button";
            delBtn.addEventListener("click", function () { confirmDelete(it); });

            act.appendChild(editBtn);
            act.appendChild(delBtn);
            tdAct.appendChild(act);
            tr.appendChild(tdAct);

            eventRows.appendChild(tr);
        });
    }


    /* ---------- Calendar view ---------- */

    function renderCalendar() {
        calTitle.textContent = new Date(calYear, calMonth, 1)
            .toLocaleDateString("en-ZA", { month: "long", year: "numeric" });

        calGrid.innerHTML = "";

        ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"].forEach(function (d) {
            calGrid.appendChild(el("div", "cal-head", d));
        });

        const firstDay = new Date(calYear, calMonth, 1).getDay();
        const daysInMonth = new Date(calYear, calMonth + 1, 0).getDate();

        for (let i = 0; i < firstDay; i++) calGrid.appendChild(el("div"));

        for (let day = 1; day <= daysInMonth; day++) {
            const isToday = day === now.getDate() &&
                calMonth === now.getMonth() && calYear === now.getFullYear();

            const cell = el("div", "cal-day" + (isToday ? " today" : ""));
            cell.appendChild(el("span", "num", String(day)));

            const key = dateKey(calYear, calMonth, day);

            // An item shows on every day from its start date to its end date
            items.filter(function (it) { return it.date <= key && key <= it.endDate; })
                .forEach(function (it) {
                    const chip = el("div", "cal-event type-" + it.kind, it.title);
                    chip.title = it.title;
                    cell.appendChild(chip);
                });

            calGrid.appendChild(cell);
        }
    }

    document.getElementById("calPrev").addEventListener("click", function () {
        calMonth--;
        if (calMonth < 0) { calMonth = 11; calYear--; }
        renderCalendar();
    });

    document.getElementById("calNext").addEventListener("click", function () {
        calMonth++;
        if (calMonth > 11) { calMonth = 0; calYear++; }
        renderCalendar();
    });


    /* ---------- List / Calendar tabs ---------- */

    function setView(name) {
        const isList = name === "list";
        listView.classList.toggle("hidden", !isList);
        calendarView.classList.toggle("hidden", isList);
        tabList.classList.toggle("active", isList);
        tabCalendar.classList.toggle("active", !isList);
    }

    tabList.addEventListener("click", function () { setView("list"); });
    tabCalendar.addEventListener("click", function () { setView("calendar"); });


    /* ---------- Add / Edit form ---------- */

    function applyKind(kind) {
        const isPlan = kind === "yearplan";
        kindHidden.value = kind;
        kindSelect.value = kind;
        timeGroup.classList.toggle("hidden", isPlan);
        locationGroup.classList.toggle("hidden", isPlan);
        endGroup.classList.toggle("hidden", !isPlan);
        dateLabel.textContent = isPlan ? "Start date" : "Date";
        updateSaveButton();
    }

    function updateSaveButton() {
        const isPlan = kindHidden.value === "yearplan";
        saveBtn.disabled = !(
            titleInput.value.trim() &&
            dateInput.value &&
            (!isPlan || endInput.value)
        );
    }

    function openForm(it) {
        if (it) {
            formTitle.textContent = "Edit " + kindLabels[it.kind];
            saveBtn.textContent = "Update";
            idInput.value = it.id;
            titleInput.value = it.title;
            descInput.value = it.description;
            dateInput.value = it.date;
            endInput.value = it.endDate;
            timeInput.value = it.time || "08:00";
            locationInput.value = it.location || "";
            kindSelect.disabled = true;      // the kind can't change once saved
            applyKind(it.kind);
        } else {
            formTitle.textContent = "New Event";
            saveBtn.textContent = "Add";
            idInput.value = "";
            titleInput.value = "";
            descInput.value = "";
            dateInput.value = "";
            endInput.value = "";
            timeInput.value = "08:00";
            locationInput.value = "";
            kindSelect.disabled = false;
            applyKind("event");
        }

        form.classList.remove("hidden");
        form.scrollIntoView({ behavior: "smooth", block: "nearest" });
        titleInput.focus();
    }

    function closeForm() {
        form.classList.add("hidden");
    }

    kindSelect.addEventListener("change", function () {
        formTitle.textContent = "New " + kindLabels[kindSelect.value];
        applyKind(kindSelect.value);
    });

    document.getElementById("addEventBtn").addEventListener("click", function () {
        if (!form.classList.contains("hidden") && idInput.value === "") closeForm();
        else openForm(null);
    });

    document.getElementById("evCancel").addEventListener("click", closeForm);

    [titleInput, dateInput, endInput].forEach(function (input) {
        input.addEventListener("input", updateSaveButton);
    });


    /* ---------- Delete (confirm dialog) ---------- */

    function confirmDelete(it) {
        const backdrop = el("div", "dialog-backdrop");

        backdrop.innerHTML =
            '<div class="dialog">' +
            '<div class="dialog-icon danger">' +
            '<svg width="24" height="24" viewBox="0 0 24 24" fill="none">' +
            '<path d="M12 9v4M12 17h.01" stroke="#dc2626" stroke-width="2" stroke-linecap="round"/>' +
            '<path d="M10.29 3.86L1.82 18a2 2 0 001.71 3h16.94a2 2 0 001.71-3L13.71 3.86a2 2 0 00-3.42 0z" stroke="#dc2626" stroke-width="2" fill="none" stroke-linejoin="round"/>' +
            '</svg></div>' +
            '<h2>Delete ' + kindLabels[it.kind] + '</h2>' +
            '<p id="dlgText"></p>' +
            '<div class="dialog-actions">' +
            '<button type="button" class="btn btn-outline" data-act="cancel">Cancel</button>' +
            '<button type="button" class="btn btn-danger" data-act="confirm">Delete</button>' +
            '</div></div>';

        backdrop.querySelector("#dlgText").textContent =
            "Are you sure you want to delete \"" + it.title + "\"? This cannot be undone.";

        document.body.appendChild(backdrop);

        function close() { backdrop.remove(); }

        backdrop.addEventListener("click", function (e) {
            if (e.target === backdrop) close();
        });

        backdrop.querySelector('[data-act="cancel"]').addEventListener("click", close);

        backdrop.querySelector('[data-act="confirm"]').addEventListener("click", function () {
            document.getElementById("delKind").value = it.kind;
            document.getElementById("delId").value = it.id;
            document.getElementById("delForm").submit();
        });
    }


    /* ---------- Start ---------- */

    renderList();
    renderCalendar();
});