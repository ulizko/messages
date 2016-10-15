function encode()
{
    var secret = document.getElementById('message-password').value;
    var message = document.getElementById('message-text').value;
    var encrypted = CryptoJS.AES.encrypt(message, secret);
    document.getElementById("message-text").value = encrypted;
}