import "bootstrap";
import swal from 'sweetalert2';




function popAlert() {
    let timerInterval
    swal({
      title: "Too far from next activity!",
      timer: 5000,
      confirmButtonColor: '#6B5EE5',
      onOpen: () => {
         timerInterval = setInterval(() => {
         }, 100)
      },
      onClose: () => {
        clearInterval(timerInterval)
      }
    }).then((result) => {
      if (
        // Read more about handling dismissals
        result.dismiss === swal.DismissReason.timer
      ) {
        console.log('I was closed by the timer')
      }
    })
}

window.popAlert = popAlert;
