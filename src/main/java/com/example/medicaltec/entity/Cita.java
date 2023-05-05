package com.example.medicaltec.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

@Getter
@Setter
@Entity
@Table(name = "cita")
public class Cita {
    @Id
    @Column(name = "idcita", nullable = false)
    private Integer id;

    @Column(name = "fecha", nullable = false)
    private String fecha;

    @Column(name = "hora",nullable = false)
    private String hora;

    @Column(name = "citacancelada")
    private Boolean citacancelada;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "sedes_idsedes", nullable = false)
    private Sede sedesIdsedes;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "especialidades_id_especialidad", nullable = false)
    private Especialidade especialidadesIdEspecialidad;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "estadoscita_idestados")
    private Estadoscita estadoscitaIdestados;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "receta_idreceta")
    private Receta recetaIdreceta;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tarjeta_idtarjetas")
    private Tarjeta tarjetaIdtarjetas;

    @Column(name = "formapago", nullable = false, length = 45)
    private String formapago;

    @Column(name = "modalidad", nullable = false, length = 45)
    private String modalidad;

}