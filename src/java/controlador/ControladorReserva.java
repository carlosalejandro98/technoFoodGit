package controlador;

import dao.ReservarDAO;
import dto.Reserva;

/**
 *
 * @author Carlitos
 */
public class ControladorReserva {

    public Reserva getReservaPersona(String rut) {
        return new ReservarDAO().getReserva(rut);
    }
}
