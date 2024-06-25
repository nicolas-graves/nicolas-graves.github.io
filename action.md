---
layout: default
title: Passe à l'action !
---
<div class="flex h-full max-w-full max-h-full items-center justify-center">
  <div class="flex flex-col md:flex-row p-5">
    <div class="flex basis-2/5 items-center justify-center p-2 font-semibold">
      <div class="p-3 m-2 font-semibold">
        <ul class="space-y-4">
          <li class="flex items-center">
            <span>Vous êtes au top</span>
            <img class="h-4 ml-2" src="assets/img/noun-heart-6961246.svg" alt="<3">
          </li>
          <li class="flex items-center">
            <span class="flex items-center justify-center w-8 h-8 mr-3 bg-gray-800 text-white rounded-full flex-shrink-0">1</span>
            <span>Voici le message pour vos proches</span>
          </li>
          <li class="flex items-center">
            <span class="flex items-center justify-center w-8 h-8 mr-3 bg-gray-800 text-white rounded-full flex-shrink-0">2</span>
            <span>Vous pouvez l'envoyer en 1 clic dans toutes vos boucles, et même le modifier</span>
          </li>
        </ul>
      </div>
    </div>
    <form class="flex flex-col basis-3/5 w-full">
      <textarea id="message-text" class="p-2 min-w-full min-h-64 resize-none hover:resize shadow-lg rounded-lg bg-lightgreen focus:ring-2 font-['Helvetica'] text-sm">Jour J ! Petit rappel d’aller voter aux élections européennes 😊 C’est une élection à un seul tour.

        Les bureaux de vote sont ouverts jusqu’à 18h (et 20h dans les grandes villes mais mieux vaut y aller avant).

        Pour vérifier son bureau de vote : https://www.elections.interieur.gouv.fr/mes-demarches/je-trouve-mon-bureau-de-vote

        À bientôt 💌</textarea>
      <div class="flex justify-around mt-4">
        <button onclick="copyText()" class="icon-button"><img src="assets/img/noun-copy-5631678.svg" alt="WhatsApp" width="50" height="60"></button>
        <button onclick="sendWhatsApp()" class="icon-button"><img src="assets/img/whatsapp.svg" alt="WhatsApp" width="45" height="45"></button>
        <button onclick="sendTelegram()" class="icon-button"><img src="assets/img/telegram.svg" alt="Telegram" width="45" height="45"></button>
        <button onclick="sendMessenger()" class="icon-button"><img src="assets/img/messenger.svg" alt="Telegram" width="60" height="60"></button>
        <button onclick="sendSMS()" class="icon-button"><img src="assets/img/noun-message-6619249.svg" alt="Email" width="60" height="60"></button>
        <button onclick="sendEmail()" class="icon-button"><img src="assets/img/noun-email-6970519.svg" alt="Email" width="60" height="60"></button>
      </div>
    </form>
  </div>
</div>
<div class="m-1 align-left">
  <p class="text-right font-semibold px-2"><a href="/legal">Mentions légales</a></p>
</div>

<script>
  function copyText() {
  const messageText = document.getElementById('message-text').value;
  navigator.clipboard.writeText(messageText);
  }

  function sendWhatsApp() {
  const messageText = document.getElementById('message-text').value;
  window.open(`https://wa.me/?text=${encodeURIComponent(messageText)}`, '_blank');
  }

  function sendEmail() {
  const messageText = document.getElementById('message-text').value;
  const subject = "Petit rappel d’aller voter";
  const mailtoLink = document.createElement('a');
  mailtoLink.href = `mailto:?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(messageText)}`;
  mailtoLink.click();
  }

  function sendTelegram() {
  const messageText = document.getElementById('message-text').value;
  window.open(`tg://msg?text=${encodeURIComponent(messageText)}`, '_blank');
}

function sendMessenger() {
  const messageText = document.getElementById('message-text').value;
  window.open(`fb-messenger://share/?text=${encodeURIComponent(messageText)}`, '_blank');
}

function sendSMS() {
  const messageText = document.getElementById('message-text').value;
  const phoneNumber = ''; // Enter the recipient's phone number here
  window.open(`sms:${phoneNumber}?body=${encodeURIComponent(messageText)}`, '_blank');
}

</script>
