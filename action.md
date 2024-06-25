---
layout: default
title: Passe à l'action !
---
<div class="flex h-full max-w-full max-h-full items-center justify-center">
  <div class="flex flex-col md:flex-row p-5">
    <div class="flex basis-2/5 items-center justify-center p-2 font-semibold">
      <div class="p-5 m-2 font-semibold">
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
    <form class="flex flex-col basis-3/5">
      <textarea id="message-text" class="p-2 min-w-full min-h-72 resize-none hover:resize shadow-lg rounded-lg bg-green-200 focus:ring-2">Jour J ! Petit rappel d’aller voter aux élections européennes 😊 C’est une élection à un seul tour.

Les bureaux de vote sont ouverts jusqu’à 18h (et 20h dans les grandes villes mais mieux vaut y aller avant).

Pour vérifier son bureau de vote : https://www.elections.interieur.gouv.fr/mes-demarches/je-trouve-mon-bureau-de-vote

À bientôt 💌</textarea>
      <div class="flex justify-around mt-4">
        <button onclick="copyText()" class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition duration-300">Copier</button>
        <button onclick="sendWhatsApp()" class="bg-green-500 text-white px-4 py-2 rounded-lg hover:bg-green-700 transition duration-300">WhatsApp</button>
        <button onclick="sendEmail()" class="bg-red-500 text-white px-4 py-2 rounded-lg hover:bg-red-700 transition duration-300">Email</button>
      </div>
    </form>
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
  window.open(`mailto:?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(messageText)}`, '_blank');
  }
</script>
