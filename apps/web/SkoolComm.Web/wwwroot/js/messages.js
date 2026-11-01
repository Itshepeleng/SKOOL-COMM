document.addEventListener('DOMContentLoaded', function () {
    const cls = document.getElementById('msgClass');
    if (!cls) return;

    const learner = document.getElementById('msgLearner');
    const audience = document.getElementById('msgAudience');
    const subject = document.getElementById('msgSubject');
    const body = document.getElementById('msgBody');
    const count = document.getElementById('msgCount');
    const send = document.getElementById('msgSend');
    const filter = document.getElementById('msgFilter');
    const toast = document.getElementById('msgToast');
    const learners = JSON.parse(cls.dataset.learners || '[]');

    // Recipients: ALL, CLASS:4 A or LEARNER:107
    function setAudience() {
        if (cls.value === 'ALL') audience.value = 'ALL';
        else if (learner.value) audience.value = 'LEARNER:' + learner.value;
        else audience.value = 'CLASS:' + cls.value;
    }

    cls.addEventListener('change', function () {
        if (cls.value === 'ALL') {
            learner.classList.add('hidden');
        } else {
            learner.innerHTML = '<option value="">Whole class</option>';
            learners.filter(function (l) { return l.cls === cls.value; }).forEach(function (l) {
                const opt = document.createElement('option');
                opt.value = l.id;
                opt.textContent = l.name;
                learner.appendChild(opt);
            });
            learner.classList.remove('hidden');
        }
        setAudience();
    });

    learner.addEventListener('change', setAudience);

    // Character count and Send button
    function update() {
        count.textContent = body.value.length;
        send.disabled = !(subject.value.trim() && body.value.trim());
    }
    subject.addEventListener('input', update);
    body.addEventListener('input', update);
    update();

    // Engagement filter
    filter.addEventListener('change', function () {
        document.querySelectorAll('.msg-item').forEach(function (item) {
            item.classList.toggle('hidden', filter.value !== 'all' && item.dataset.state !== filter.value);
        });
    });

    // Fade out the server message
    if (toast && !toast.classList.contains('hidden')) {
        setTimeout(function () { toast.classList.add('hidden'); }, 6000);
    }
});