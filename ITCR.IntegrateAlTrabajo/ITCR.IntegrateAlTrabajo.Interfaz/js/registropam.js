function alertBoxCustom(acceptText, cancelText, message) {
    // custom OK and Cancel label
    // default: OK, Cancel
    alertify.set({ labels: {
        ok: acceptText,
        cancel: cancelText
    }
    });
    // button labels will be "Accept" and "Deny"
    alertify.confirm(message)
}

function finalizar() {
    alert('Usted se ha registrado exitosamente.');
    location.href = "/Autenticacion/frmAutenticacion.aspx";
}

function endConfirmation() {
    // custom OK and Cancel label
    // default: OK, Cancel
    alertify.set({ labels: {
        ok: "Si, estoy seguro",
        cancel: "No, deseo continuar el formulario"
    }
    });
    // button labels will be "Accept" and "Deny"
    alertify.confirm("¿Esta seguro que desea salir sin guardar?", function (e) {
        if (e) {
            location.href = "/Autenticacion/frmAutenticacion.aspx";
        }
    });
}

function eliminarEstudio(index) {
    // custom OK and Cancel label
    // default: OK, Cancel
    alertify.set({ labels: {
        ok: "Si, estoy seguro",
        cancel: "No, quiero mantenerlo"
    }
    });
    // button labels will be "Accept" and "Deny"
    alertify.confirm("¿Esta seguro que desea eliminar esta fila de estudios?", function (e) {
        if (e) {
            eliminarFila("<%= dgEstudios.ClientID %>", index);
            PageMethods.eliminarEstudio(index, OnSuccess, OnError);
        }
    });
}

function validarTelefonosClient(oSrc, args) {
    args.IsValid = (window.txtTelefonoHabitacion.Text != "" || window.txtCelular.Text != "");
}
function eliminarExperiencia(index) {
    // custom OK and Cancel label
    // default: OK, Cancel
    alertify.set({ labels: {
        ok: "Si, estoy seguro",
        cancel: "No, quiero mantenerlo"
    }
    });
    // button labels will be "Accept" and "Deny"
    alertify.confirm("¿Esta seguro que desea eliminar esta fila de experiencia laboral?", function (e) {
        if (e) {
            eliminarFila("<%= dgExperienciasLaborales.ClientID %>", index);
            PageMethods.eliminarExperiencia(index, OnSuccess, OnError);
        }
    });
}

function validarUsuarioClient(oSrc, args) {
    args.IsValid = window.CARACTERES_MINIMOS <= args.Value.Length
                                            && args.Value.Length <= window.CARACTERES_MAXIMOS;
}

function eliminarFila(id, rowindex) {
    var tabla = document.getElementById(id);
    tabla.deleteRow(rowindex + 1);
}

function OnSuccess(response) {
    alertify.set({ labels: {
        ok: "Aceptar",
        cancel: "Cancelar"
    }
    });
    alertify.alert("Se ha eliminado la fila.");
}
function OnError(error) {
    alertify.set({ labels: {
        ok: "Aceptar",
        cancel: "Cancelar"
    }
    });
    alert(error);
}