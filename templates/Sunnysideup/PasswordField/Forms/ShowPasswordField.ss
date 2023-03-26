<div class="eye-holder">
    <input $AttributesHTML />
    <span class="eye">👁</span>
</div>
<script>



// get all elements with class "password"
const passwordElement = document.getElementById('{$ID}_Holder');
if(passwordElement) {
    const eyeElement = passwordElement.querySelector('.eye');
    const inputElement = passwordElement.querySelector('input');
    const height = inputElement.offsetHeight;
    console.log(inputElement.offsetHeight);
    eyeElement.style.top = 'calc( '+Math.round(height/2)  + 'px - 0.5em)' ;
    // add a click event listener to the right element
    eyeElement.addEventListener('click', () => {
            // find the input element


            // toggle between password and text
            if (inputElement.type === 'password') {
                inputElement.type = 'text';
                inputElement.value = inputElement.value.trim();
                eyeElement.classList.add('text-eye');
                eyeElement.classList.remove('password-eye');
            } else {
                inputElement.type = 'password';
                eyeElement.classList.remove('text-eye');
                eyeElement.classList.add('password-eye');
            }
        }
    );
} else {
    console.log('id not found');
}
</script>
<style>
    .eye-holder {
        position: relative;
    }
    .eye-holder .eye {
        position: absolute;
        right: 0.5em;
        cursor: pointer;

    }
    .eye-holder .eye.text-eye {
        opacity: 0.5;
    }

</style>
