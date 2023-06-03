importScripts("https://www.gstatic.com/firebasejs/7.5.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/7.5.0/firebase-messaging.js");
firebase.initializeApp({
  apiKey: "AIzaSyCNGVGMxuyXW-LxhosVBr72xpBLq1AHcgQ",
  authDomain: "granja-dd887.firebaseapp.com",
  databaseURL: "https://granja-dd887-default-rtdb.firebaseio.com",
  projectId: "granja-dd887",
  storageBucket: "granja-dd887.appspot.com",
  messagingSenderId: "330379483771",
  appId: "1:330379483771:web:36751445fdfda2e276a0de",
  measurementId: "G-9BS90L1GJT"
});


const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) {
    const promiseChain = clients
        .matchAll({
            type: "window",
            includeUncontrolled: true
        })
        .then(windowClients => {
            for (let i = 0; i < windowClients.length; i++) {
                const windowClient = windowClients[i];
                windowClient.postMessage(payload);
            }
        })
        .then(() => {
            return registration.showNotification("New Message");
        });
    return promiseChain;
});
self.addEventListener('notificationclick', function (event) {
    console.log('notification received: ', event)
});