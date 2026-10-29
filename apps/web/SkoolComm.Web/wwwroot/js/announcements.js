/* =========================================================
   Announcements page (real data from Supabase)
   - Audience chips, character count
   - Send enables when title and message are filled in
   - Confirm dialog, then the form posts to AnnouncementsController.Create
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const form = document.getElementById("annForm");
    if (!form) return;

    const titleInput = document.getElementById("annTitle");
    const messageInput = document.getElementById("annMessage");
    const audienceInput = document.getElementById("annAudience");
    const charCount = document.getElementById("charCount");
    const chips = document.querySelectorAll("#audienceChips .chip");
    const sendBtn = document.getElementById("annSend");
    const clearBtn = document.getElementById("annClear");
    const toast = document.getElementById("annToast");
    const toastText = document.getElementById("annToastText");
    const announcementDialog = document.getElementById("announcementDialog");
    const announcementDialogTitle = document.getElementById("announcementDialogTitle");
    const announcementDialogContent = document.getElementById("announcementDialogContent");
    const announcementDialogAudience = document.getElementById("announcementDialogAudience");
    const announcementDialogDate = document.getElementById("announcementDialogDate");
    const announcementDialogClose = document.getElementById("announcementDialogClose");


    /* ---------- Helpers ---------- */

    function showToast(message, type) {
        toastText.textContent = message;
        toast.className = "toast " + (type || "success");
        setTimeout(function () { toast.classList.add("hidden"); }, 4000);
    }

    // Fade out a message the server rendered
    if (!toast.classList.contains("hidden")) {
        setTimeout(function () { toast.classList.add("hidden"); }, 5000);
    }

    function updateSend() {
        sendBtn.disabled = !(titleInput.value.trim() && messageInput.value.trim());
    }

    function closeAnnouncementDialog() {
        announcementDialog.classList.add("hidden");
    }

    document.querySelectorAll(".announcement-card").forEach(function (card) {
        card.addEventListener("click", function () {
            announcementDialogTitle.textContent = card.dataset.title;
            announcementDialogContent.textContent = card.dataset.content;
            announcementDialogAudience.textContent = card.dataset.audience;
            announcementDialogDate.textContent = card.dataset.date;
            announcementDialog.classList.remove("hidden");
        });
    });

    announcementDialogClose.addEventListener("click", closeAnnouncementDialog);
    announcementDialog.addEventListener("click", function (e) {
        if (e.target === announcementDialog) closeAnnouncementDialog();
    });
    document.addEventListener("keydown", function (e) {
        if (e.key === "Escape" && !announcementDialog.classList.contains("hidden")) {
            closeAnnouncementDialog();
        }
    });


    /* ---------- Inputs ---------- */

    titleInput.addEventListener("input", updateSend);

    messageInput.addEventListener("input", function () {
        charCount.textContent = messageInput.value.length;
        updateSend();
    });

    chips.forEach(function (chip) {
        chip.addEventListener("click", function () {
            chips.forEach(function (c) { c.classList.remove("active"); });
            chip.classList.add("active");
            audienceInput.value = chip.dataset.audience;
        });
    });

    clearBtn.addEventListener("click", function () {
        titleInput.value = "";
        messageInput.value = "";
        charCount.textContent = "0";
        updateSend();
    });


    /* ---------- Confirm dialog, then save ---------- */

    function openConfirm() {
        const backdrop = document.createElement("div");
        backdrop.className = "dialog-backdrop";

        backdrop.innerHTML =
            '<div class="dialog">' +
            '<div class="dialog-icon primary">' +
            '<svg width="24" height="24" viewBox="0 0 24 24" fill="none">' +
            '<circle cx="12" cy="12" r="9" stroke="#1a5c2e" stroke-width="2" fill="none"/>' +
            '<path d="M12 8v4M12 16h.01" stroke="#1a5c2e" stroke-width="2" stroke-linecap="round"/>' +
            '</svg></div>' +
            '<h2>Publish Announcement</h2>' +
            '<p id="dlgText"></p>' +
            '<div class="dialog-actions">' +
            '<button type="button" class="btn btn-outline" data-act="cancel">Cancel</button>' +
            '<button type="button" class="btn btn-primary" data-act="confirm">Yes, Publish</button>' +
            '</div></div>';

        // textContent keeps typed text safe
        backdrop.querySelector("#dlgText").textContent =
            "Are you sure you want to send \"" + titleInput.value.trim() + "\" to " +
            audienceInput.value + "? This will be visible to all recipients straight away.";

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
        if (!titleInput.value.trim() || !messageInput.value.trim()) {
            showToast("Please fill in the title and the message.", "error");
            return;
        }
        openConfirm();
    });

    updateSend();
});