---
layout: default
title: Message
---

<div class="columns">
    <div class="column todo-list">
        <ol>
            <li>Voici le message pour vos proches</li>
            <li>Vous pouvez l'envoyer en 1 clic dans toutes vos boucles, et même le modifier</li>
        </ol>
    </div>
    <div class="column message-column">
        <p id="message-text">
            Jour J ! Petit rappel d’aller voter aux élections européennes 😊 C’est une élection à un seul tour.<br>
            Les bureaux de vote sont ouverts jusqu’à 18h (et 20h dans les grandes villes mais mieux vaut y aller avant).<br><br>
            Pour vérifier son bureau de vote : <a href="https://www.elections.interieur.gouv.fr/mes-demarches/je-trouve-mon-bureau-de-vote">https://www.elections.interieur.gouv.fr/mes-demarches/je-trouve-mon-bureau-de-vote</a><br><br>
            À bientôt 💌
        </p>
        <div>
            <button onclick="copyText()">Copier</button>
            <button onclick="sendWhatsApp()">WhatsApp</button>
            <button onclick="sendEmail()">Email</button>
        </div>
    </div>
</div>

<script>
    const messageText = `Jour J ! Petit rappel d’aller voter aux élections européennes 😊 C’est une élection à un seul tour.
    Les bureaux de vote sont ouverts jusqu’à 18h (et 20h dans les grandes villes mais mieux vaut y aller avant).
    Pour vérifier son bureau de vote : https://www.elections.interieur.gouv.fr/mes-demarches/je-trouve-mon-bureau-de-vote
    À bientôt 💌`;

    function copyText() {
        navigator.clipboard.writeText(messageText);
    }

    function sendWhatsApp() {
        window.open(`https://wa.me/?text=${encodeURIComponent(messageText)}`, '_blank');
    }

    function sendEmail() {
        const subject = "Petit rappel d’aller voter";
        const body = messageText.replace(/\n/g, '%0D%0A'); // Ensures new lines are encoded properly
        window.location.href = `mailto:?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`;
    }
</script>
