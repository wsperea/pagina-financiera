document.addEventListener('DOMContentLoaded', () => {
    const modal = document.getElementById('modalMeta');
    const btnOpen = document.getElementById('openModal');
    const btnClose = document.getElementById('closeModal');
    const btnSave = document.getElementById('saveMeta');

    // Abrir Modal
    btnOpen.onclick = () => {
        modal.style.display = 'flex';
    }

    // Cerrar Modal
    btnClose.onclick = () => {
        modal.style.display = 'none';
    }

    // Cerrar si se hace clic fuera del contenido
    window.onclick = (event) => {
        if (event.target == modal) {
            modal.style.display = 'none';
        }
    }

    // Lógica para Guardar Meta
    btnSave.onclick = () => {
        const name = document.getElementById('metaName').value;
        const amount = document.getElementById('metaAmount').value;

        if(name && amount) {
            alert(`¡Meta "${name}" creada con éxito por $${amount}!`);
            modal.style.display = 'none';
            // Aquí podrías agregar código para insertar la meta en la lista visualmente
        } else {
            alert("Por favor rellena todos los campos");
        }
    }

    // Botones de Navegación Lateral
    const menuItems = document.querySelectorAll('.sidebar li');
    menuItems.forEach(item => {
        item.onclick = function() {
            menuItems.forEach(i => i.classList.remove('active'));
            this.classList.add('active');
        }
    });
});