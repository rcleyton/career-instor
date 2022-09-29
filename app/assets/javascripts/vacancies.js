//Script to display success toast copy button

const toastTrigger = document.getElementById('liveToastBtn')
const toastLiveExample = document.getElementById('liveToast')
  if (toastTrigger) {
    toastTrigger.addEventListener('click', () => {
      const toast = new bootstrap.Toast(toastLiveExample)
    toast.show()
  })
}

//Script to copy vacancy title

function copyText() {
  text = document.getElementById('title-vacancy')
  navigator.clipboard.writeText(text.innerHTML)
}
