import { dbank } from '../../declarations/dbank';

window.addEventListener('load', async () => {
    const currentAmount = await dbank.getBalance();
    currentAmount = Math.round(currentAmount * 100) / 100;
    document.getElementById('value').innerText = currentAmount;
})


document.querySelector("form").addEventListener("submit", async function (event) {

    const button = event.target.querySelector("#submit-btn");
    button.setAttribute("disabled", true);

    if (document.getElementById("input-amount").value, length != 0) {
        await dbank.topUp(inputAmount);
    }

    event.preventDefault();
    const inputAmount = parseFloat(document.getElementById("input-amount").value);
    const outputAmout = parseFloat(document.getElementById("withdrawal-amount").value);

    document.getElementById("input-amount").value = "";
    button.removeAttribute("disabled");


})