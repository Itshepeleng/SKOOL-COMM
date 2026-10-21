/* =========================================================
   Behavioural Points (offence system, real data)
   - Class + learner search, level buttons, offence list
   - Confirm dialog, then the form posts to BehaviouralController.Save
   - Builds the Learner Behaviour Sheet for the selected learner
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const page = document.getElementById("behPage");
    if (!page) return;

    const learners = JSON.parse(page.dataset.learners);
    const entries = JSON.parse(page.dataset.entries);
    const offences = JSON.parse(page.dataset.offences);
    const levels = JSON.parse(page.dataset.levels);

    let selectedId = Number(page.dataset.selected) || 0;
    let level = 1;

    const classSelect = document.getElementById("behClass");
    const dateInput = document.getElementById("behDate");
    const form = document.getElementById("behForm");
    const search = document.getElementById("behSearch");
    const suggest = document.getElementById("behSuggest");
    const learnerInput = document.getElementById("behLearnerId");
    const levelButtons = document.querySelectorAll("#levelRow .level-btn");
    const offenceSelect = document.getElementById("behOffence");
    const notes = document.getElementById("behNotes");
    const sendBtn = document.getElementById("behSend");
    const cancelBtn = document.getElementById("behCancel");
    const toast = document.getElementById("behToast");
    const toastText = document.getElementById("behToastText");

    const sheetBody = document.getElementById("sheetBody");
    const shClass = document.getElementById("shClass");
    const shLearner = document.getElementById("shLearner");
    const shTotal = document.getElementById("shTotal");


    /* ---------- Helpers ---------- */

    function el(tag, className, text) {
        const node = document.createElement(tag);
        if (className) node.className = className;
        if (text !== undefined) node.textContent = text;
        return node;
    }

    function showToast(message, type) {
        toastText.textContent = message;
        toast.className = "toast " + (type || "success");
        setTimeout(function () { toast.classList.add("hidden"); }, 4000);
    }

    // Fade out a message the server rendered
    if (!toast.classList.contains("hidden")) {
        setTimeout(function () { toast.classList.add("hidden"); }, 5000);
    }

    function currentLearner() {
        return learners.find(function (l) { return l.id === selectedId; });
    }

    function updateSend() {
        sendBtn.disabled = selectedId === 0;
    }


    /* ---------- Learner search (only the chosen class) ---------- */

    function showSuggestions() {
        const text = search.value.trim().toLowerCase();
        suggest.innerHTML = "";

        const matches = learners.filter(function (l) {
            return l.cls === classSelect.value && l.name.toLowerCase().includes(text);
        }).slice(0, 8);

        if (matches.length === 0) {
            suggest.appendChild(el("div", "suggest-empty", "No learners found"));
        }

        matches.forEach(function (l) {
            const item = el("button", "suggest-item", l.name);
            item.type = "button";
            item.addEventListener("click", function () { selectLearner(l); });
            suggest.appendChild(item);
        });

        suggest.classList.remove("hidden");
    }

    function selectLearner(l) {
        selectedId = l.id;
        learnerInput.value = l.id;
        search.value = l.name;
        suggest.classList.add("hidden");
        updateSend();
        renderSheet();
    }

    function clearLearner() {
        selectedId = 0;
        learnerInput.value = "";
        search.value = "";
        suggest.classList.add("hidden");
        updateSend();
        renderSheet();
    }

    search.addEventListener("focus", function () {
        if (selectedId === 0) showSuggestions();
    });

    search.addEventListener("input", function () {
        // typing again clears the earlier choice
        selectedId = 0;
        learnerInput.value = "";
        updateSend();
        renderSheet();
        showSuggestions();
    });

    document.addEventListener("click", function (e) {
        if (!e.target.closest(".search-wrap") && !e.target.closest("#behSuggest")) {
            suggest.classList.add("hidden");
        }
    });

    classSelect.addEventListener("change", clearLearner);


    /* ---------- Level buttons and offence list ---------- */

    function fillOffences() {
        offenceSelect.innerHTML = "";

        offences.filter(function (o) { return o.level === level; })
            .forEach(function (o) {
                const opt = el("option", null, o.code + " · " + o.description);
                opt.value = o.code;
                offenceSelect.appendChild(opt);
            });
    }

    function setLevel(n) {
        level = n;
        levelButtons.forEach(function (b) {
            b.classList.toggle("active", Number(b.dataset.level) === n);
        });
        fillOffences();
    }

    levelButtons.forEach(function (b) {
        b.addEventListener("click", function () { setLevel(Number(b.dataset.level)); });
    });


    /* ---------- The behaviour sheet ---------- */

    function thresholdBadge(total) {
        if (total >= 100) return { text: "Parents called in", cls: "badge-red" };
        if (total >= 75) return { text: "Parent meeting", cls: "badge-orange" };
        if (total >= 50) return { text: "Detention", cls: "badge-yellow" };
        return null;
    }

    function renderSheet() {
        const learner = currentLearner();

        shClass.textContent = classSelect.value;
        shLearner.textContent = learner ? learner.name : "Select a learner";

        const mine = learner
            ? entries.filter(function (e) { return e.learnerId === selectedId; })
                .slice().sort(function (a, b) { return a.sort.localeCompare(b.sort); })
            : [];

        // Total points and the 50 / 75 / 100 thresholds
        shTotal.innerHTML = "";
        if (learner) {
            const total = mine.reduce(function (sum, e) { return sum + e.points; }, 0);
            shTotal.appendChild(document.createTextNode("Total: "));
            shTotal.appendChild(el("strong", null, total + " pts"));

            const badge = thresholdBadge(total);
            if (badge) {
                const b = el("span", "badge " + badge.cls, badge.text);
                b.style.marginLeft = "8px";
                shTotal.appendChild(b);
            }
        }

        sheetBody.innerHTML = "";

        levels.forEach(function (lv) {
            // Level heading row
            const head = el("tr", "lvl lvl-" + lv.level);
            const td = el("td");
            td.colSpan = 7;
            const inner = el("div", "lvl-inner");
            inner.appendChild(el("span", null, "LEVEL " + lv.level + " · " + lv.name));
            inner.appendChild(el("span", null, lv.points + " pts"));
            td.appendChild(inner);
            head.appendChild(td);
            sheetBody.appendChild(head);

            // One row per offence, up to 5 date cells
            offences.filter(function (o) { return o.level === lv.level; })
                .forEach(function (o) {
                    const tr = el("tr");
                    tr.appendChild(el("td", "code", o.code));
                    tr.appendChild(el("td", null, o.description));

                    const records = mine.filter(function (e) { return e.code === o.code; });

                    for (let i = 0; i < 5; i++) {
                        const cell = el("td", "sheet-cell");
                        const r = records[i];

                        if (r) {
                            cell.classList.add("filled");
                            let text = r.date + (r.initials ? " " + r.initials : "");
                            if (i === 4 && records.length > 5) {
                                text += " (+" + (records.length - 5) + ")";
                            }
                            cell.textContent = text;
                        }
                        tr.appendChild(cell);
                    }

                    sheetBody.appendChild(tr);
                });
        });
    }


    /* ---------- Confirm dialog, then save ---------- */

    function formatDate(value) {
        return new Date(value + "T00:00:00").toLocaleDateString("en-ZA", {
            day: "numeric", month: "long", year: "numeric"
        });
    }

    function openConfirm() {
        const learner = currentLearner();
        const offence = offences.find(function (o) { return o.code === offenceSelect.value; });
        if (!learner || !offence) return;

        const backdrop = el("div", "dialog-backdrop");

        backdrop.innerHTML =
            '<div class="dialog">' +
            '<div class="dialog-icon warning">' +
            '<svg width="24" height="24" viewBox="0 0 24 24" fill="none">' +
            '<circle cx="12" cy="12" r="9" stroke="#ca8a04" stroke-width="2" fill="none"/>' +
            '<path d="M12 8v4M12 16h.01" stroke="#ca8a04" stroke-width="2" stroke-linecap="round"/>' +
            '</svg></div>' +
            '<h2>Record Behaviour</h2>' +
            '<p id="dlgText"></p>' +
            '<div class="dialog-actions">' +
            '<button type="button" class="btn btn-outline" data-act="cancel">Cancel</button>' +
            '<button type="button" class="btn btn-warning" data-act="confirm">Send Record</button>' +
            '</div></div>';

        backdrop.querySelector("#dlgText").textContent =
            "Record " + offence.code + " · " + offence.description +
            " (−" + offence.points + " pts) for " + learner.name +
            " on " + formatDate(dateInput.value) + "?";

        document.body.appendChild(backdrop);

        function close() { backdrop.remove(); }

        backdrop.addEventListener("click", function (e) {
            if (e.target === backdrop) close();
        });

        backdrop.querySelector('[data-act="cancel"]').addEventListener("click", close);

        backdrop.querySelector('[data-act="confirm"]').addEventListener("click", function () {
            close();
            form.submit();
        });
    }

    sendBtn.addEventListener("click", function () {
        if (selectedId === 0) {
            showToast("Please choose a learner first.", "error");
            return;
        }
        if (!dateInput.value) {
            showToast("Please select a date.", "error");
            return;
        }
        openConfirm();
    });

    cancelBtn.addEventListener("click", function () {
        notes.value = "";
        setLevel(1);
        clearLearner();
    });


    

    setLevel(1);

    // After a save the server re-opens the page with the learner already chosen
    const startLearner = currentLearner();
    if (startLearner) {
        search.value = startLearner.name;
        learnerInput.value = startLearner.id;
    }

    updateSend();
    renderSheet();
});