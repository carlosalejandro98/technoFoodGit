package dto;

public class Mesa {

    private int id_mesa;
    private int asientos;
    private String estado_mesa;

    public Mesa(int id_mesa, int asientos, String estado_mesa) {
        this.id_mesa = id_mesa;
        this.asientos = asientos;
        this.estado_mesa = estado_mesa;
    }

    public Mesa(int id_mesa, int asientos) {
        this.id_mesa = id_mesa;
        this.asientos = asientos;
    }

    public Mesa() {
    }

    public Mesa(int id_mesa) {
        this.id_mesa = id_mesa;
    }

    public int getId_mesa() {
        return id_mesa;
    }

    public void setId_mesa(int id_mesa) {
        this.id_mesa = id_mesa;
    }

    public int getAsientos() {
        return asientos;
    }

    public void setAsientos(int asientos) {
        this.asientos = asientos;
    }

    public String getEstado_mesa() {
        return estado_mesa;
    }

    public void setEstado_mesa(String estado_mesa) {
        this.estado_mesa = estado_mesa;
    }

}
