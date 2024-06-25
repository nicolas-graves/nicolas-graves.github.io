---
layout: default
title: Passe à l'action !
---

<body>
  <div class="flex h-screen items-center justify-center">
    <div class="flex flex-row">
      <div class="flex flex-1 items-center justify-center p-5 font-semibold">
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
      <div class="flex-1">
        <form>
          <textarea id="message-text" rows="12" cols="50" class="shadow-lg rounded-lg m-2 p-5 bg-green-100 focus:ring-2">Jour J ! Petit rappel d’aller voter aux élections européennes 😊 C’est une élection à un seul tour.

Les bureaux de vote sont ouverts jusqu’à 18h (et 20h dans les grandes villes mais mieux vaut y aller avant).

Pour vérifier son bureau de vote : https://www.elections.interieur.gouv.fr/mes-demarches/je-trouve-mon-bureau-de-vote

À bientôt 💌</textarea>
        </form>
        <div class="flex justify-around mt-4">
          <button onclick="copyText()" class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition duration-300">Copier</button>
          <button onclick="sendWhatsApp()" class="bg-green-500 text-white px-4 py-2 rounded-lg hover:bg-green-700 transition duration-300">WhatsApp</button>
          <button onclick="sendEmail()" class="bg-red-500 text-white px-4 py-2 rounded-lg hover:bg-red-700 transition duration-300">Email</button>
        </div>
        <div class="absolute top-0 right-[-10px] w-0 h-0 border-t-10 border-t-transparent border-b-10 border-b-transparent border-l-10 border-l-green-100"></div>
      </div>
    </div>
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
</body>
