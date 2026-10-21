// wwwroot/js/skoolcomm.js
(function () {
  // Simple nav highlight (for nav buttons that include data-screen)
  document.addEventListener('click', function (ev) {
    var t = ev.target;
    if (!t) return;
    // mark nav items
    if (t.matches('[data-screen]')) {
      document.querySelectorAll('[data-screen]').forEach(function (b) { b.classList.remove('active'); });
      t.classList.add('active');
    }

    // mark-all attendance
    if (t.matches('[data-mark-all]')) {
      var status = t.getAttribute('data-mark-all');
      document.querySelectorAll('.attendance-row').forEach(function (r) {
        r.dataset.selected = status || '';
        r.querySelectorAll('[data-status]').forEach(function (b) {
          b.classList.toggle('selected', status && b.getAttribute('data-status') === status);
        });
      });
      updateAttendanceSummary();
    }
  });

  function initAttendance() {
    document.querySelectorAll('.attendance-row').forEach(function (row) {
      row.querySelectorAll('[data-status]').forEach(function (btn) {
        btn.addEventListener('click', function () {
          var status = btn.getAttribute('data-status');
          // toggle
          if (row.dataset.selected === status) {
            row.dataset.selected = '';
            btn.classList.remove('selected');
          } else {
            row.dataset.selected = status;
            row.querySelectorAll('[data-status]').forEach(function (b) { b.classList.remove('selected'); });
            btn.classList.add('selected');
          }
          updateAttendanceSummary();
        });
      });
    });
    updateAttendanceSummary();
  }

  function updateAttendanceSummary() {
    var rows = Array.from(document.querySelectorAll('.attendance-row'));
    var present = rows.filter(function (r) { return r.dataset.selected === 'present'; }).length;
    var absent = rows.filter(function (r) { return r.dataset.selected === 'absent'; }).length;
    var late = rows.filter(function (r) { return r.dataset.selected === 'late'; }).length;
    var total = rows.length;
    var notMarked = total - present - absent - late;
    var el = function (id) { return document.getElementById(id); };
    if (el('summaryPresent')) el('summaryPresent').textContent = String(present);
    if (el('summaryAbsent')) el('summaryAbsent').textContent = String(absent);
    if (el('summaryLate')) el('summaryLate').textContent = String(late);
    if (el('summaryNotMarked')) el('summaryNotMarked').textContent = String(notMarked);
  }

  document.addEventListener('DOMContentLoaded', function () {
    if (document.querySelector('.attendance-table')) {
      initAttendance();
    }
  });

  // expose for manual init
  window.SkoolComm = window.SkoolComm || {};
  window.SkoolComm.initAttendance = initAttendance;
/* =========================================================
   ATTENDANCE INTERACTION
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const attendanceTable =
        document.querySelector(".attendance-table");

    if (!attendanceTable) {
        return;
    }

    const attendanceButtons =
        document.querySelectorAll(".attendance-status");

    const presentCount =
        document.getElementById("presentCount");

    const absentCount =
        document.getElementById("absentCount");

    const totalCount =
        document.getElementById("totalCount");


    function updateAttendanceCounts() {

        const activePresent =
            document.querySelectorAll(
                ".attendance-status.present.active"
            ).length;

        const activeAbsent =
            document.querySelectorAll(
                ".attendance-status.absent.active"
            ).length;

        presentCount.textContent = activePresent;
        absentCount.textContent = activeAbsent;
        totalCount.textContent =
            activePresent + activeAbsent;
    }


    attendanceButtons.forEach(function (button) {

        button.addEventListener("click", function () {

            const row = button.closest("tr");

            if (!row) {
                return;
            }

            const presentButton =
                row.querySelector(".attendance-status.present");

            const absentButton =
                row.querySelector(".attendance-status.absent");


            if (button.classList.contains("present")) {

                presentButton.classList.add("active");
                absentButton.classList.remove("active");

            }


            if (button.classList.contains("absent")) {

                absentButton.classList.add("active");
                presentButton.classList.remove("active");

            }


            updateAttendanceCounts();

        });

    });

});
/* =========================================================
   SAVE ATTENDANCE
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const saveButton =
        document.getElementById("saveAttendanceButton");

    if (!saveButton) {
        return;
    }

    saveButton.addEventListener("click", function () {

        const attendanceDate =
            document.getElementById("attendanceDate").value;

        const classSelect =
            document.getElementById("classSelect");

        const selectedClass =
            classSelect.options[classSelect.selectedIndex].text;

        if (!attendanceDate) {

            alert("Please select an attendance date.");

            return;
        }

        alert(
            "Attendance saved successfully for " +
            selectedClass +
            " on " +
            attendanceDate +
            "."
        );

    });

});
/* =========================================================
   BEHAVIOURAL POINTS INTERACTION
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const saveButton =
        document.getElementById("saveBehaviourButton");

    if (!saveButton) {
        return;
    }
const positivePoints =
    document.getElementById("positivePoints");

const negativePoints =
    document.getElementById("negativePoints");

const totalRecords =
    document.getElementById("totalRecords");

    saveButton.addEventListener("click", function () {

        const learnerSelect =
            document.getElementById("learnerSelect");

        const behaviourSelect =
            document.getElementById("behaviourSelect");

        const pointsInput =
            document.getElementById("pointsInput");

        const behaviourDate =
            document.getElementById("behaviourDate");

        const behaviourNotes =
            document.getElementById("behaviourNotes");


        const learner =
            learnerSelect.options[
                learnerSelect.selectedIndex
            ].text;

        const behaviour =
            behaviourSelect.options[
                behaviourSelect.selectedIndex
            ].text;

        const points =
            parseInt(pointsInput.value);

        const date =
            behaviourDate.value;


        /* Validation */

        if (!learnerSelect.value) {

            alert("Please select a learner.");

            return;
        }

        if (!behaviourSelect.value) {

            alert("Please select a behaviour.");

            return;
        }

        if (!points || points <= 0) {

            alert("Please enter a valid number of points.");

            return;
        }

        if (!date) {

            alert("Please select a date.");

            return;
        }


        /* Determine positive or negative */

        const negativeBehaviours = [
            "negative",
            "late",
            "disruptive"
        ];

        const isNegative =
            negativeBehaviours.includes(
                behaviourSelect.value
            );


        const displayPoints =
            isNegative
                ? "-" + points
                : "+" + points;


        /* Create new table row */

        const tableBody =
            document.querySelector(
                ".behaviour-table tbody"
            );

        const newRow =
            document.createElement("tr");


        const formattedDate =
            new Date(date + "T00:00:00")
                .toLocaleDateString(
                    "en-GB",
                    {
                        day: "2-digit",
                        month: "short",
                        year: "numeric"
                    }
                );


        newRow.innerHTML = `
            <td>${learner}</td>
            <td>${behaviour}</td>
            <td>
                <span class="${
                    isNegative
                        ? "points-negative"
                        : "points-positive"
                }">
                    ${displayPoints}
                </span>
            </td>
            <td>${formattedDate}</td>
        `;


        tableBody.prepend(newRow);
/* Update counters */

const currentPositive =
    parseInt(positivePoints.textContent) || 0;

const currentNegative =
    parseInt(negativePoints.textContent) || 0;

const currentTotal =
    parseInt(totalRecords.textContent) || 0;


if (isNegative) {

    negativePoints.textContent =
        currentNegative + points;

} else {

    positivePoints.textContent =
        currentPositive + points;

}


totalRecords.textContent =
    currentTotal + 1;


        /* Success message */

        alert(
            "Behavioural points saved successfully."
        );


        /* Clear form */

        learnerSelect.value = "";
        behaviourSelect.value = "";
        pointsInput.value = "";
        behaviourNotes.value = "";

    });

});
/* =========================================================
   ACADEMIC RESULTS INTERACTION
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const saveButton =
        document.getElementById("saveResultsButton");

    if (!saveButton) {
        return;
    }

    saveButton.addEventListener("click", function () {

        const learnerSelect =
            document.getElementById("resultLearner");

        const subjectSelect =
            document.getElementById("resultSubject");

        const markInput =
            document.getElementById("resultMark");

        const termSelect =
            document.getElementById("resultTerm");

        const commentInput =
            document.getElementById("resultComment");


        if (!learnerSelect.value) {
            alert("Please select a learner.");
            return;
        }

        if (!subjectSelect.value) {
            alert("Please select a subject.");
            return;
        }

        const mark =
            parseInt(markInput.value);

        if (isNaN(mark) || mark < 0 || mark > 100) {
            alert("Please enter a mark between 0 and 100.");
            return;
        }

        if (!termSelect.value) {
            alert("Please select a term.");
            return;
        }


        const learner =
            learnerSelect.options[
                learnerSelect.selectedIndex
            ].text;

        const subject =
            subjectSelect.options[
                subjectSelect.selectedIndex
            ].text;

        const term =
            termSelect.options[
                termSelect.selectedIndex
            ].text;

        const comment =
            commentInput.value.trim();


        /* Determine result level */

        let resultClass;
        let resultText;

        if (mark >= 80) {

            resultClass = "result-excellent";
            resultText = "Excellent";

        } else if (mark >= 60) {

            resultClass = "result-good";
            resultText = "Good";

        } else if (mark >= 50) {

            resultClass = "result-average";
            resultText = "Average";

        } else {

            resultClass = "result-needs-support";
            resultText = "Needs Support";

        }


        /* Add result to table */

        const tableBody =
            document.querySelector(
                ".results-table tbody"
            );

        const newRow =
            document.createElement("tr");

        newRow.innerHTML = `
            <td>${learner}</td>
            <td>${subject}</td>
            <td>${mark}%</td>
            <td>${term}</td>
            <td>
                <span class="result-badge ${resultClass}">
                    ${resultText}
                </span>
            </td>
        `;

        tableBody.prepend(newRow);


        /* Update result count */

        const resultsCount =
            document.getElementById("resultsCount");

        const currentCount =
            parseInt(resultsCount.textContent) || 0;

        resultsCount.textContent =
            currentCount + 1;


        /* Update highest mark */

        const highestMark =
            document.getElementById("highestMark");

        const currentHighest =
            parseInt(
                highestMark.textContent
            ) || 0;

        if (mark > currentHighest) {
            highestMark.textContent =
                mark + "%";
        }


        /* Show success message */

        alert(
            "Academic result saved successfully."
        );


        /* Clear form */

        learnerSelect.value = "";
        subjectSelect.value = "";
        markInput.value = "";
        termSelect.value = "";
        commentInput.value = "";

    });

});
 /* =========================================================
    ANNOUNCEMENTS INTERACTION
    ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const saveButton =
        document.getElementById("saveAnnouncementButton");

    if (!saveButton) {
        return;
    }

    saveButton.addEventListener("click", function () {

        const titleInput =
            document.getElementById("announcementTitle");

        const audienceSelect =
            document.getElementById("announcementAudience");

        const dateInput =
            document.getElementById("announcementDate");

        const messageInput =
            document.getElementById("announcementMessage");


        const title =
            titleInput.value.trim();

        const message =
            messageInput.value.trim();

        const date =
            dateInput.value;


        if (!title) {
            alert("Please enter an announcement title.");
            return;
        }

        if (!audienceSelect.value) {
            alert("Please select an audience.");
            return;
        }

        if (!date) {
            alert("Please select a date.");
            return;
        }

        if (!message) {
            alert("Please enter an announcement message.");
            return;
        }


        const audience =
            audienceSelect.options[
                audienceSelect.selectedIndex
            ].text;


        /* Format date */

        const formattedDate =
            new Date(date + "T00:00:00")
                .toLocaleDateString(
                    "en-GB",
                    {
                        day: "2-digit",
                        month: "short",
                        year: "numeric"
                    }
                );


        /* Create announcement */

        const announcementList =
            document.getElementById(
                "announcementList"
            );

        const newAnnouncement =
            document.createElement("div");

        newAnnouncement.className =
            "announcement-item";


        newAnnouncement.innerHTML = `
            <div class="announcement-item-header">

                <div>

                    <h4>${title}</h4>

                    <span class="announcement-audience">
                        ${audience}
                    </span>

                </div>

                <span class="announcement-date">
                    ${formattedDate}
                </span>

            </div>

            <p>
                ${message}
            </p>
        `;


        announcementList.prepend(
            newAnnouncement
        );


        /* Update counters */

        const announcementCount =
            document.getElementById(
                "announcementCount"
            );

        const monthlyCount =
            document.getElementById(
                "monthlyAnnouncementCount"
            );


        const currentTotal =
            parseInt(
                announcementCount.textContent
            ) || 0;

        const currentMonthly =
            parseInt(
                monthlyCount.textContent
            ) || 0;


        announcementCount.textContent =
            currentTotal + 1;

        monthlyCount.textContent =
            currentMonthly + 1;


        alert(
            "Announcement published successfully."
        );


        /* Clear form */

        titleInput.value = "";
        audienceSelect.value = "";
        dateInput.value = "";
        messageInput.value = "";

    });

});
/* =========================================================
   EVENTS & YEAR PLAN INTERACTION
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const addEventButton =
        document.getElementById("addEventButton");

    if (!addEventButton) {
        return;
    }

    addEventButton.addEventListener("click", function () {

        const titleInput =
            document.getElementById("eventTitle");

        const dateInput =
            document.getElementById("eventDate");

        const categorySelect =
            document.getElementById("eventCategory");

        const descriptionInput =
            document.getElementById("eventDescription");


        const title =
            titleInput.value.trim();

        const date =
            dateInput.value;

        const description =
            descriptionInput.value.trim();


        if (!title) {
            alert("Please enter an event title.");
            return;
        }

        if (!date) {
            alert("Please select an event date.");
            return;
        }

        if (!categorySelect.value) {
            alert("Please select an event category.");
            return;
        }

        if (!description) {
            alert("Please enter an event description.");
            return;
        }


        const category =
            categorySelect.options[
                categorySelect.selectedIndex
            ].text;


        /* Format date */

        const eventDate =
            new Date(date + "T00:00:00");


        const day =
            eventDate.getDate()
                .toString()
                .padStart(2, "0");


        const month =
            eventDate.toLocaleDateString(
                "en-GB",
                {
                    month: "short"
                }
            ).toUpperCase();


        /* Determine badge */

        let badgeClass =
            "academic-badge";


        if (categorySelect.value === "sports") {
            badgeClass = "sports-badge";
        }

        if (categorySelect.value === "meeting") {
            badgeClass = "meeting-badge";
        }

        if (categorySelect.value === "holiday") {
            badgeClass = "holiday-badge";
        }


        /* Create event */

        const eventList =
            document.getElementById("eventList");


        const newEvent =
            document.createElement("div");


        newEvent.className =
            "event-item";


        newEvent.innerHTML = `
            <div class="event-date-box">

                <strong>${day}</strong>

                <span>${month}</span>

            </div>

            <div class="event-details">

                <div class="event-title-row">

                    <h4>${title}</h4>

                    <span class="event-badge ${badgeClass}">
                        ${category}
                    </span>

                </div>

                <p>
                    ${description}
                </p>

            </div>
        `;


        eventList.prepend(newEvent);


        alert(
            "Event added successfully."
        );


        /* Clear form */

        titleInput.value = "";
        dateInput.value = "";
        categorySelect.value = "";
        descriptionInput.value = "";

    });

});
/* =========================================================
   MANAGE USERS INTERACTION
   ========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const saveUserButton =
        document.getElementById("saveUserButton");

    if (!saveUserButton) {
        return;
    }

    saveUserButton.addEventListener("click", function () {

        const nameInput =
            document.getElementById("userName");

        const emailInput =
            document.getElementById("userEmail");

        const roleSelect =
            document.getElementById("userRole");


        const name =
            nameInput.value.trim();

        const email =
            emailInput.value.trim();


        if (!name) {
            alert("Please enter the user's full name.");
            return;
        }

        if (!email) {
            alert("Please enter an email or username.");
            return;
        }

        if (!roleSelect.value) {
            alert("Please select a user role.");
            return;
        }


        const role =
            roleSelect.options[
                roleSelect.selectedIndex
            ].text;


        /* Determine role badge */

        let roleClass =
            "parent-role";


        if (roleSelect.value === "teacher") {
            roleClass = "teacher-role";
        }

        if (roleSelect.value === "admin") {
            roleClass = "admin-role";
        }


        /* Create table row */

        const tableBody =
            document.querySelector(
                ".users-table tbody"
            );


        const newRow =
            document.createElement("tr");


        newRow.innerHTML = `
            <td>
                <strong>${name}</strong>
            </td>

            <td>
                ${email}
            </td>

            <td>
                <span class="user-role ${roleClass}">
                    ${role}
                </span>
            </td>

            <td>
                <span class="user-status active-status">
                    Active
                </span>
            </td>

            <td>
                <button type="button"
                        class="user-action-button">
                    Edit
                </button>
            </td>
        `;


        tableBody.prepend(newRow);


        /* Update counters */

        const totalUsers =
            document.getElementById("totalUsers");

        const teacherCount =
            document.getElementById("teacherCount");

        const parentCount =
            document.getElementById("parentCount");

        const adminCount =
            document.getElementById("adminCount");


        totalUsers.textContent =
            (parseInt(totalUsers.textContent) || 0) + 1;


        if (roleSelect.value === "teacher") {

            teacherCount.textContent =
                (parseInt(teacherCount.textContent) || 0) + 1;

        }


        if (roleSelect.value === "parent") {

            parentCount.textContent =
                (parseInt(parentCount.textContent) || 0) + 1;

        }


        if (roleSelect.value === "admin") {

            adminCount.textContent =
                (parseInt(adminCount.textContent) || 0) + 1;

        }


        alert(
            "User created successfully."
        );


        /* Clear form */

        nameInput.value = "";
        emailInput.value = "";
        roleSelect.value = "";

    });

});